; start muting when pause button is pressed
Pause::

	SoundGet masterVolume
	
	; save original volume level
	originalVolume := masterVolume
	
	; fade out to volume level 5
	while(masterVolume > 6)
	{
		masterVolume := masterVolume - 1
		SoundSet, masterVolume
		sleep 100
	}
	
	; adds on the radio I listen usually last around 220 seconds
	sleep 220000
	
	; fade back in
	while(masterVolume < originalVolume)
	{
		masterVolume := masterVolume + 1
		SoundSet, masterVolume
		sleep 100
	}
		
return