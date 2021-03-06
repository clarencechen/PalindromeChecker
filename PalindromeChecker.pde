public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  word = preprocess(word);
  for(int i = 0; i < word.length(); i++)
  {
    if(!(word.charAt(i) == word.charAt(word.length() -1 -i)))
    {
      return false;
    }
  }
  //your code here
  return true;
}
public String preprocess(String word)
{
  String newstr = "";
  for(int i = 0; i < word.length(); i++)
  {
    if(Character.isLetter(word.charAt(i)))
    {
      newstr += word.substring(i, i +1);
    }
  }
  return newstr.toLowerCase();
}
