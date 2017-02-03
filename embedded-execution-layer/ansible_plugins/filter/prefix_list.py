def prefix_list(prefix, start_idx, count):
    return [ prefix + str(x) for x in xrange(start_idx, start_idx + count)]


class FilterModule(object):
    def filters(self):
        return {
            'prefix_list': prefix_list,
        }
