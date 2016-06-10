function flag = validateInversion(filteredSpeech)

flag = 1;
[peaks,ind] = findpeaks(filteredSpeech,'MinPeakHeight',max(filteredSpeech)/6);
l1 = length(ind);

peaks = [];
ind = [];
filteredSpeech = filteredSpeech .*-1;
[peaks,ind] = findpeaks(filteredSpeech,'MinPeakHeight',max(filteredSpeech)/6);
l2 = length(ind);


if(l1 > l2)
    flag = 0;
end
