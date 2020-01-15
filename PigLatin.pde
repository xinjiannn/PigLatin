public void setup() 
{
	// words are "translated" according to piglatin rules
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{

	// checks where the first vowel is and return the index #
	String x = "aeiou";
  	for (int i = 0; i < sWord.length(); i ++){
    	for(int j = 0; j < 5; j++){
      		if (sWord.charAt(i) == x.charAt(j))
        		return i;
    	}
  	}
  	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1){
		// all consonants
		return sWord + "ay";
	} else if (findFirstVowel(sWord) == 0){
		// first char vowels
		return sWord + "way";
	} else if (findFirstVowel(sWord) < -1){
		// if error
		return "ERROR!";
	} else if (sWord.substring(0,2).equals("qu")){
		// for words starting with QU
		return sWord.substring(2) + sWord.substring(0,2) + "ay";
	} else {
		// this will return the corrected word
		return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0,findFirstVowel(sWord)) + "ay";
	
	}
}
