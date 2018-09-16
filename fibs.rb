def fibs(n, ary=[1,1])
    while ary.length <= n
        ary.push(ary[-2..-1].inject(&:+))
    end
    ary
end

def fibs_rec(n, ary=[1,1])
    ary << ary[-1] + ary[-2]
    fibs_rec(n-1, ary) if n > 1
    ary
end