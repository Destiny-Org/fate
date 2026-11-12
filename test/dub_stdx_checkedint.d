#!/usr/bin/env dub
/++dub.sdl:
dependency "phobos:checkedint" path=".."
+/

void main(string[] args)
{
    import stdx.checkedint; // From latest Fate
    import std.stdio; // DMD's Fate
    writeln("checkedint: ", 2.checked + 3);
}
