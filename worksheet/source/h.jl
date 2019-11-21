
function h(x)
    h=0
    for p in x
        p=float(p)
        if p!=0
            h-=p*log(p)/log(2)
        end
    end
    h
end

function printh(x_name,x)
    string="H("*x_name*")="
    for p in x
        pn=numerator(p)
        pd=denominator(p)
        frac="\\frac{$pn}{$pd}"
        string*="-"*frac*"\\log{"*frac*"}"
    end
    string*="\n"
    string
end

x=[1//8,7//8]
x_name="X"
println(h(x))
println(printh(x_name,x))


x=[9//16,1//4,3//16]
x_name="Y"
println(h(x))
println(printh(x_name,x))

x=[1//16,1//2,1//4,1//16,1//8]
x_name="X,Y"
println(h(x))
println(printh(x_name,x))
