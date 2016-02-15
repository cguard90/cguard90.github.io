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

