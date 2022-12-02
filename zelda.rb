use_bpm 80

# Our main melody
live_loop :melody do
  use_synth :saw
  
  riff = (
    ring
    :A6, :D6,  :Bb5, :G5, :G6, :D6,  :Bb5, :G5, :Fs6, :D6,  :Bb5, :G5, :G6, :D6,  :Bb5, :G5,
    :G6, :C6,  :A5,  :F5, :F6, :C6,  :A5,  :F5, :E6,  :C6,  :A5,  :F5, :F6, :C6,  :A5,  :F5,
    :F6, :Bb5, :G5,  :E5, :E6, :Bb5, :G5,  :E5, :Eb6, :Bb5, :G5,  :E5, :E6, :Bb5, :G5,  :E5,
    :E6, :A5,  :F5,  :D5, :D6, :A5,  :F5,  :D5, :Cs6, :A5,  :F5,  :D5, :D6, :A5,  :F5,  :D5,
  )
  
  with_fx :reverb, mix: 0.5 do
    play riff.tick, attack: 0.10, release: 0.50
  end
  
  sleep 0.25
end

##| # Complimanetary colour chords
live_loop :pad do
  use_synth :dtri
  
  with_fx :reverb, mix: 0.75 do
    play :G3,  attack: 0, release: 4, amp: 0.5
    play :F3,  attack: 0, release: 4, amp: 0.5
    play :Bb3, attack: 0, release: 4, amp: 0.5
    play :G3,  attack: 0, release: 4, amp: 0.5
    sleep 4
    
    play :F3, attack: 0, release: 4, amp: 0.5
    play :E3, attack: 0, release: 4, amp: 0.5
    play :A3, attack: 0, release: 4, amp: 0.5
    play :C3, attack: 0, release: 4, amp: 0.5
    sleep 4
    
    play :C3,  attack: 0, release: 4, amp: 0.5
    play :Bb3, attack: 0, release: 4, amp: 0.5
    play :E3,  attack: 0, release: 4, amp: 0.5
    play :G3,  attack: 0, release: 4, amp: 0.5
    sleep 4
    
    play :D3, attack: 0, release: 4, amp: 0.5
    play :E3, attack: 0, release: 4, amp: 0.5
    play :A3, attack: 0, release: 4, amp: 0.5
    play :C3, attack: 0, release: 4, amp: 0.5
    sleep 4
  end
end

##| # Quarter note bass; to be manually changed from G2 -> F2 -> E2 -> D2 during performances
live_loop :bass do
  with_fx :bitcrusher, bits: 4 do
    use_synth :chipbass
    play :G2
    sleep 0.50
  end
end

##| # A simple four-on-the-floor to carry the melody
live_loop :drums do
  sample :bd_pure, amp: 1.5
  sleep 1
  sample :bd_pure, amp: 1.5
  sample :sn_dub,  amp: 1.5
  sleep 1
end

##| # And some hi-hats
live_loop :hi_hats do
  16.times do
    sample :drum_cymbal_closed, amp: 0.75
    sleep 1.0 / 16.0
  end
  
  2.times do
    sample :drum_cymbal_closed, amp: 0.75
    sleep 0.5
  end
  
  4.times do
    sample :drum_cymbal_closed, amp: 0.75
    sleep 0.25
  end
  
  8.times do
    sample :drum_cymbal_closed, amp: 0.75
    sleep 1.0 / 8.0
  end
end
