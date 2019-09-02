#ifndef HTMLPARSER_AS
#define HTMLPARSER_AS
#include "cmdexec.as"
#module

#deffunc htmltag str html, str tag, var v
	creattmp _t
	notesel _buf
	noteadd html
	notesave _t
	memset _buf, '', notesize
	cmdexec "htmlparser --command=htmltag --filename=" + _t + " --tag=" + tag, v
	deltmp _t
	return
#deffunc htmltagattr str html, str tag, str attrs, var v
	creattmp _t
	notesel _buf
	noteadd html
	notesave _t
	memset _buf, '', notesize
	cmdexec "htmlparser --command=htmltagattr --filename=" + _t + " --tag" + tag + " --attr" + attrs, v
	deltmp _t
	return
#deffunc htmlsrc str html, str tag, var v
	creattmp _t
	notesel _buf
	noteadd html
	notesave _t
	memset _buf, '', notesize
	cmdexec "htmlparser --command=htmlsrc --filename" + _t + " --tag=" + tag, v
	deltmp _t
	return
#deffunc htmltext str html, str tag, var v
	creattmp _t
	notesel _buf
	noteadd html
	notesave _t
	memset _buf, '', notesize
	cmdexec "htmlparser --command=htmltext --filename=" + _t + " --tag=" + tag, v
	deltmp _t
	return
#deffunc htmllink str html, str tag, var v
	creattmp _t
	notesel _buf
	noteadd html
	notesave _t
	memset _buf, '', notesize
	cmdexec "htmlparser --command=htmllink --filename" + _t + " --tag" + tag, v
	deltmp _t
	return
#global
#endif
