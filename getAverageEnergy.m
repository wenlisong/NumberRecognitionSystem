function average_energy=getAverageEnergy(signal)
    energy=zeros(length(signal));
    for i=1:1:length(signal)
        energy(i)=signal(i)*signal(i);
    end
    average_energy=mean(energy(:));
end

