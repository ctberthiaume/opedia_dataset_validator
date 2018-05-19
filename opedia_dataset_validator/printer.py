import csv

def print_tsv_errors(errors, fh, print_all=True, header=True, print_value=False):
    fill_error_fields(errors)
    errors_output = []
    errors_seen = set()
    for e in errors:
        key = (e['sheet'], e['column'], e['message'])
        if not print_all and key in errors_seen:
            continue
        errors_seen.add(key)
        errors_output.append(e)
    if print_value:
        outkeys = ['sheet', 'column', 'row', 'value', 'message']
    else:
        outkeys = ['sheet', 'column', 'row', 'message']
        for e in errors:
            _ = e.pop('value', None)
    writer = csv.DictWriter(fh, outkeys, delimiter='\t', lineterminator='\n')
    if header:
        fh.write('#')
        writer.writeheader()
    for e in errors_output:
        writer.writerow(e)


def fill_error_fields(errors):
    for e in errors:
        for k in ['column', 'message', 'row', 'sheet', 'value']:
            e.setdefault(k, None)
