arrays = Entry.new(title: "Arrays and Hashes")
arrays.save

paragraph1 = Paragraph.new(body: "Hello audience, welcome back. So for today, we're going to dive into the differences between arrays and hashes. At the absolute highest level, you can think of both as a list of sorts. And that's about where the similarities end. The sooner you can think of them as entirely seperate things the better, because you don't want to pair them together too much, and call array methods on a hash, or a hash method on an array.", entry: arrays)

paragraph2 = Paragraph.new(body: "Arrays are an ordered list of any object(s) in ruby. It can contain strings, numbers, arrays, in theory it can contain hashes as well. Within the array, each object is signed an index. The list is ordered, initially based on the order it is placed in the index. You can then manipulate the data within the array as you see fit. You can use the .sort! method, to sort from smallest to largest, (or generally speaking alphabetical order, but that has a few more nuances that would need to be ironed out becuase of how the system prioritizes capital letters). You can use the .push method to add items to the array, or you can use .pop method, to remove items from the array. Regardless of how the item is added, it will be assigned a number, and you can always call the item based on it's index number.", entry: arrays)

paragraph3 = Paragraph.new(body: "Now this seems nice on the surface, but if you have an array with 1,000 items in it, and you need to find an item that used to be at index 567, and you don't know where it has been moved to, you can search the entire array for it. That seems like it could be fun right? There is an alternative option though, and that is to use Hashes. I know, if Hashes taste as good as Hash browns, we're in for a treat. Maybe if there's a day on-site dedicated to hashes, we can call it Hash-Brown day. That would be nice. I'm typing this before breakfast, hope it isn't too obvious.", entry: arrays)

paragraph4 = Paragraph.new(body: "So a hash is a list that stores item based on key-value pairs. The key is a unique identifier that can be used to later call that value. hashes are sometimes also called dictionaries as a result. The key absolutely must be unique, because Hashes will not store multiple keys, although multiple keys can point to the same value. So now in that 1000 long list, instead of needing to find our relocated item, we could just call the key. So now if the item lost somewhere in the middle has a key of hashbrowns, then regardless of how many other unique keys are added to the hash, we can just call hashbrowns.", entry: arrays)

paragraph5 = Paragraph.new(body: "So how do you know which to use? You guess. I'm kidding, please don't guess. If the numerical order of the items is most important, then an array is the way to go. I would also say if the array of items is easily sorted, then an array is still just fine. Hashes are great if the items need to be associative though, as they can individually be called easier.", entry: arrays)

paragraph1.save
paragraph2.save
paragraph3.save
paragraph4.save
paragraph5.save

enum = Entry.new(title: "Enumerables")
enum.save


paragraph6 = Paragraph.new(body: "So this week we learned more about enumerables. These are fun to work with if used properly, but like all things code, you must use them properly unless you really like error messages. So to begin, an enumerable is a thing. What kind of thing is it? It's a module specifically. To keep it simple an enumerable is something that can be iterated over. It is not the same as an enumerator. An enumerator allows both internal and external iteration, an enumerable is a mixin. I'm diving into a lot of definitions, but let's just back up to a loose association between enumerables and iterations.", entry: enum)

paragraph7 = Paragraph.new(body: "So this week we learned more about enumerables. These are fun to work with if used properly, but like all things code, you must use them properly unless you really like error messages. So to begin, an enumerable is a thing. What kind of thing is it? It's a module specifically. To keep it simple an enumerable is something that can be iterated over. It is not the same as an enumerator. An enumerator allows both internal and external iteration, an enumerable is a mixin. I'm diving into a lot of definitions, but let's just back up to a loose association between enumerables and iterations.", entry: enum)

paragraph7 = Paragraph.new(body: "So what is an example of an enumerable method? There are several, and a few of them overlap with array methods (because you can iterate over an array). A few examples that are also array methods are .map, .max, .sort, etc. The one I'm going to talk about is lazy. And that's not an insult, it's just lazy. I saw this listed and it caught my curiosity, so it seems like a good method.", entry: enum)

paragraph8 = Paragraph.new(body: "To be honest, lazy is not the easiest method to understand (ironic). In a nutshell, it returns an enumerator whose methods enumerate values only on an as needed basis. So that's why it's lazy, it does things only on an as needed basis, Otherwise it naps (not a technical term, its a bad joke). From what I'm able to read on it, lazy is actually a really awesome way to chain methods. I'm not 100% clear on the syntax on it so I'm not trying to map out exactly how to use it, but just what to use it for.", entry: enum)

paragraph9 = Paragraph.new(body: "It also allows you to iterate over infinite ranges, and return only the examples you would like returned. I think that's helpful, especially if you don't know at what point your data will return. a good example (and I guess a little syntax) is this:", entry: enum)

paragraph10 = Paragraph.new(body: "range = 1..Float::INFINITY", entry: enum)

paragraph11 = Paragraph.new(body: "p range.lazy.collect { |x| x*x }.first(10)", entry: enum)

paragraph12 = Paragraph.new(body: "=> [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]")

paragraph13 = Paragraph.new(body: "I think this is a better example of the infinite range, rather than the chaining. But it calculates the first 10 items that this iterator would return, and returns those items, rather than having to run the iterator and set x equal to 1, and have x += 1, etc. I think it's a nice, easy to read example of why Lazy can be useful. It doesn't seem like the easiest method to implement, but once I have a better handle on it, I'll update this page for later. Believe it or not, it is kind of difficult to find examples for this one because a lot of results come back for 'lazy' that are either not the easiest to read, or they talk about coding efficiently, but call it lazy instead.", entry: enum)

paragraph6.save
paragraph7.save
paragraph8.save
paragraph9.save
paragraph10.save
paragraph11.save
paragraph12.save
paragraph13.save

js = Entry.new(title: "JavaScript Object & Ruby Hashes")
js.save

paragraph14 = Paragraph.new(body: "So when you look at a JavaScript object, you might think to yourself \"Oh look, it's a Ruby Hash!\" and you're not entirely wrong, but you're not entirely right either.", entry: js)
paragraph15 = Paragraph.new(body: "Now The first thing I want to note, but did not include, is that the ruby object coulde have been written to look nearly identically. It could have been writtten more like so (focus on the curly brackets): <img src=\"../imgs/state_data.png\"> If you take away the color differences, they do now look very similar. So let's focus on the differences to make some distinctions.", entry: js)
paragraph16 = Paragraph.new(body: "JavaScript objects can contain functions. A Ruby hash cannot contain a function. This is a pretty drastic difference, as it allows certain datatypes to be allowed in Javascript objects that aren't allowed in Ruby hashes. Javascript Objects allow for dot notation where as Ruby hashes do not. So for the above examples (which may look familiar to my fellow island foxes) you can call STATE_DATA[\"Alabama\"]; but in JavaScript you can call terah.name. JavaScript does allow you to call terah[\"name\"] if you so choose, but dot notation can be easier to work with(in this given example). Objects can also be designed using constructors. A constructor looks like this: <img src=\"../imgs/constructor_notation.png\"> This notation makes a JavaScript (aesthetically speaking) resemble a Ruby Class, and that's another key to note. Objects in Javascript have more flexibility than Ruby's hashes becuase that's how each language works.JavaScript has less built in methods, which means allows for a lot of customization.", entry: js)

paragraph17 = Paragraph.new(body: "As a final note, our introduction to objects initially did make them seem similar to Ruby hashes, however as the week went on, they came to start resembling classes. The best frame of mine to look at a JavaScript object in my experience (albeit limited experience) is just that. View it as an object, and treat it as such. Determine what the object does and what you need it to do, and it'll be much easier to work with.")

paragraph14.save
paragraph15.save
paragraph16.save
paragraph17.save

recursion = Entry.new(title: "Recursion")

recursion.save

paragraph17 = Paragraph.new(body: "At the absolute highest level, A recursive function is a function that calls itself. There are several other conditions that make a condition recursive. A recursive solution is generally solving a larger problem by breaking it down into small steps, and having those steps until the problem is solved. These small steps, at their smallest level are called base cases. A base case can be a small value, or even an empty value, such as an empty array.", entry: recursion)

paragraph18 = Paragraph.new(body: "If this sounds like iteration, they are actually kind of similar. The biggest difference is that a recursive solution depends on the solutions to smaller instances of the same problem. From what I can tell, recursion can also be more efficient on larger scaled data sets, but this is also highly dependent on what the code is attempting to accomplish.", entry: recursion)

paragraph19 = Paragraph.new(body: "          The simplest example I found of recursion, in a plain english exampel is the following: </br> If home, stop moving.</br>
          else, take one step</br>
          This is a good example in english of breaking things down to their smallest steps. The condtion once met, is to stop taking steps, otherwise, only one step is taken.</br></br>
          The last real life example I found for recursion was an example of setting 2 mirrors across from each other. The image will reflect infinitely, recursion can repeat infinitely as well, which is why it is important to set a condition to break at.", entry: recursion)

paragraph17.save
paragraph18.save
paragraph19.save

issues = Entry.new(title: "Online Security")
issues.save

paragraph20 = Paragraph.new(body: "Online Security is a topic to me that I find very interesting. Some of these reasons are the fact that I try to post minimal information about myself online (ironic now that I have a blog page), and I know some people are so into social media that their entire lives are posted on the internet. There are many stories of both people being successful and being harassed just based solely on what they have posted. There are several issues as I see it with online security based on readings that I have done.", entry: issues)
paragraph21 = Paragraph.new(body: "The first issue is the fact that with the internet, literally all computers connected to the internet are in a sense connected to each other. This is relating to a post I read from CNN a little while back. Pretty much what it said is that no matter how many firewalls you put up, or security settings you apply, if someone wants to find the information badly enough, it can be found. There is no truly guaranteed security online. This can be evidenced by the Ashley Madison Hacks, and the head of the CIA having his email hacked. There is always a way into a program, even if the programmers themselves overlook it.", entry: issues)
paragraph22 = Paragraph.new(body: "The other reason online security is of such an interest to me is small stories like <%= link_to 'Kiki Kannibal', 'http://www.rollingstone.com/culture/news/kiki-kannibal-the-girl-who-played-with-fire-20110415' %> as an example. I also think it's kind of crazy the things people will do with the anonymity. But personal information is being distributed unknowingly or stolen on the internet all the time. The only time people seem to worry about it is if it happens to millions of people at once, or some corporate or government institution gets hacked. There's really no shortage of articles on the subject.", entry: issues)
paragraph23 = Paragraph.new(body: "The funny thing about online security to me though, is that there are firms out there for <a href =\"http://www.pcmag.com/encyclopedia/term/54434/white-hat-hacker\">white hat hackers</a>. They do good work in improving security, but on an international level I'm not sure if there is enough global presence for white hat hackers. Additionally, all the <a href=\"http://www.technewsworld.com/story/82636.html\"> international</a> <a href=\"http://money.cnn.com/2014/10/14/technology/security/russia-hackers/index.html\">hacks</a> make it seem like this is going to be a long up-hill battle for information on the internet to be truly safe.", entry: issues)
paragraph24 = Paragraph.new(body: "On the bright side, at least we now know how to make the <a href-\"http://www.chicagotribune.com/business/ct-perfect-password-20151023-story.html\">perfect password</a>.", entry: issues)

paragraph20.save
paragraph21.save
paragraph22.save
paragraph23.save
paragraph24.save

git = Entry.new(title: "Learning Git")
git.save

paragraph25 = Paragraph.new(body: "Version Control is a very interesting concept, and an extremely useful tool once you become proficient with it. I would not yet say I'm proficient with it, but most people aren't when they just begin learning something. Today is my first day heavily using Git, despite having an brief introduction to it a month ago. There are many different ways to describe what Git is, and many diagrams too. Essentially Git tracks every change made to every branch and gives you the option to merge the branches back together to the main branch. The main line is called the Master branch. Merging to the master branch should only be done when it can be confirmed that the contents of the code are bug free. Because Git allows multiple people to work on different parts of the code simultaneously,it can be a useful tool for dividing tasks between programmers, while making sure all parts integrate correctly before releasing a finished product.", entry: git)

paragraph26 = Paragraph.new(body: "How does Git do this? By tracking a series of save points, which it calls commits. A commit can be done at any point in time on any of the branches, and they are tracked seperately from the Master branch, until they are ready to be merged. Commits contain the most vital information you need when collaborating on a project: Who made what changes, when they made them, and what the changes were. GitHub is one site that allows you to store those commits, and it shows both contents that have been removed, which show in red; and contents that have been added, which show in green. Everything shown in white is carried over from the previous commit.", entry: git)

paragraph27 = Paragraph.new(body: "This makes GitHub a great place to store your code, because it is both simple to use, and simple to read through the changes. The color coding will draw your eyes to the updates, and if there are any issues in attempting to merge your commit, the site will let you know. While learning to work with Git and GitHub I personally encountered a few stumbling blocks. For one, I pushed a commit to my Master, when I didn't start from the most up to date version of my code. This cause the site to tell me that my commits didn't line up and that my code was two commits behind what I was attempting to change. I was able to practice this a few more times throughout the day, so I have been able to iron out some of the early kinks. As I'm now in DBC, I will have plenty more time to keep working Git and GitHub, and learn so much more about it's uses.", entry: git)

paragraph25.save
paragraph26.save
paragraph27.save

classes = Entry.new(title: "Learning Classes")
classes.save

paragraph28 = Paragraph.new(body: "So classes are awesome becuase they allow you to create a template to create objects that will have a lot of the same properties. That in itself is handy because it helps keep your code DRY. No one likes code left out in the rain. Let's look at an example of a class... so for that I'm actually going to ask you to go to my <a href=\"https://github.com/cguard90/phase-0/blob/master/week-6/class_example.rb\">GitHub</a>.", entry: classes)
paragraph29 = Paragraph.new(body: "I'm assuming at this point that you have done that. So what you are looking at is a code to create an instance of the class Book. Reading the code top down, we start with an attr_reader and attr_accessor. Essentially what this allows is for these items to be accessed within the class by different methods. If this sounds handy, you would be right to think so.", entry: classes)
paragraph30 = Paragraph.new(body: "On line 6 the 'book' begins to be created. All classes begin with an initialize method. So mine takes 2 arguments, a title, which ends up being irrelevant... (oh well, that's what I get for not planning), and pages. This will only work for a short book, because it's a limited example. So your pages number be entered as a number. This is where we dive into the template parts of a class.", entry: classes)
paragraph31 = Paragraph.new(body: "The instance variables are labeled as @variable. mine are @title, @pages, and @pages_to_make. Now I have set one to an empty array. That is because I found it easier to work with it like this. The attr_reader & attr_accessor now become key onces these variables are created. I want to use these variables for later methods, so the attr_reader lets that variable be read by another method within the class, and the attr_accessor lets me both read and edit the variable from another method within the class.", entry: classes)
paragraph32 = Paragraph.new(body: "The first method instance is create pages (line 15). The purpose of this method is to create pages based on the number you provided when the class was initialized. To do this it takes the instance variable @pages_to_make and runs a loop with a counter, while the counter is less than pages to make (You'll note I started the counter at 1. Arrays start counting at 0. Most books don't use a page 0).", entry: classes)
paragraph33 = Paragraph.new(body: "The next thing you'll want to note is that the pages are not automatically created when the book is made. We have to actually run this method. At the end you will see the instance method is called on my created book 'testbook' (quite a clever name right?). If the method create_pages is not run, then the method 'read' will not be able to work, because it will always return nothing, becuase pages will always be an empty array, and empty arrays that are always empty are sad.", entry: classes)
paragraph34 = Paragraph.new(body: "After create_pages is called, we can then call read which just prompts you to turn pages. The book isn't filled out, Although that could be fun to add to this. But once you 'finish reading' the page, you would have to turn it in a normal book (if you want to continue on), so that's exactly what read does in this case. I kept the example short, so it doesn't save where you left off at, but to do that it would be best to create a new method called something like save. During read, if they wanted to stop, you could prompt the user to call the save method, and if acknowledged the code could be updated that way. It's a good time.", entry: classes)
paragraph35 = Paragraph.new(body: "So to summarize, use an instance variable when you want a variable used in multiple methods in a class. Use an instance method to run a method contained within a class. In order to actually run these, you would need an instance of the class created(hence instance variable, and instance method). Have fun, and Happy coding!", entry: classes)

paragraph28.save
paragraph29.save
paragraph30.save
paragraph31.save
paragraph32.save
paragraph33.save
paragraph34.save
paragraph35.save

reflection = Entry.new(title: "Reflection on the Blog")

paragraph36 = Paragraph.new(body: "So as we wrap up phase 0, I think the blog has actually been a good instrument from actively coding, and taking time to learn about particular elements within code, or a coding language. I've honestly liked it because I took it as time to dive into concepts I found challenging, and breaking them down to teach others has also increased my understanding of that particular topic. I also liked being able to see what other people were implementing for their personal sites, and some people were much more ambitious with their html & css than I have been at this point.", entry: reflection)
paragraph37 = Paragraph.new(body: "If there was anything I disliked, I was worried about posting on a topic and being told I was totally wrong on everything I said. A lot of times I kept my sources up until I finished typing. This didn't end up being a bad thing, becuase I wanted to convey correct information. The only other downside is that I've had a number of other things going on which kept me from diving into certain topics as deeply as I'd like. I do plan on changing this once I get onsite. I also do plan on updating the blog throughout phase 1 & 2 and maybe 3 to practice skills, or just to give myself a change of pace on a weekend. I'm not sure if this is necessarily an obtainable goal, but I will try my best to stick by it. I also would like to learn how to use bootstrap, as I wasn't able to do so this week.", entry: reflection)
paragraph38 = Paragraph.new(body: "Overall, I do have a much better idea at the how production process works, although I obviously don't understand the process as a whole quite yet. I'm looking forward to writing more advanced code and cleaner code, and that include HTML and CSS as well as Ruby and JavaScript.", entry: reflection)

paragraph36.save
paragraph37.save
paragraph38.save