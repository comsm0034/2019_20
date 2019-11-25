
using Statistics


function makeGetProbs(trialN::Int64,alpha::Float64)
    function getProbs(counts::Vector{Int64})
        itemN=length(counts)
        p=zeros(Float64,itemN)
        for i in 1:itemN
            p[i]=(counts[i]+alpha)/(trialN+alpha*itemN)
        end
        p
    end
end


function entropy(probs::Vector{Float64})
    h=0.0::Float64
    for p in probs
        if p!=0
            h-=p*log2(p)
        end
    end
    h
end

itemN=8::Int64

trialMin=itemN::Int64
trialMax=100::Int64

trialTrialN=1000

alpha=1.0::Float64

for trialN in trialMin:trialMax
    getProbs=makeGetProbs(trialN,alpha)
    hVec=Vector{Float64}()
    for i in 1:trialTrialN
        counts=zeros(Int64,itemN)
        for trialC in 1:trialN
            counts[rand(1:itemN)]+=1
        end
        push!(hVec,entropy(getProbs(counts)))
    end
    println(mean(hVec)," ",std(hVec))
end

    
