"use strict";(("undefined"!=typeof self?self:global).webpackChunkclient_web=("undefined"!=typeof self?self:global).webpackChunkclient_web||[]).push([[8865],{27224:(e,r,t)=>{t.d(r,{p:()=>p});var n=t(62822),a=t(93091),i=t.n(a),o=t(30758),l=t(88677),u=t(90457),s=t(61548),c=t(67963),d=t(89923),v=t(85755),f=t(86070),p=o.memo((function(e){var r=e.uri,t=e.divider,a=e.removeLabel,p=(0,l.wA)(),m=!(0,d.n)(),h=(0,v.f)(),b=(0,o.useCallback)((0,n.A)(i().mark((function e(){return i().wrap((function(e){for(;;)switch(e.prev=e.next){case 0:p((0,s.aw)(r,!0));case 1:case"end":return e.stop()}}),e)}))),[p,r]);return(0,f.jsx)(c.D,{role:"menuitem",divider:t,disabled:m&&!(null!=h&&h.getCapabilities().canModifyOffline),onClick:b,leadingIcon:(0,f.jsx)(u.k,{semanticColor:"textBrightAccent",size:"small"}),children:a})}))},87203:(e,r,t)=>{t.d(r,{P:()=>h});var n=t(30758),a=t(92107),i=t(85673),o=t(39150),l=t(71806),u=t(24214),s=t(14022),c=t(27224),d=t(53607),v=t(44528),f=t(57863),p=t(16920),m=t(86070),h=n.memo((function(e){var r=e.uri,t=e.artistUri,n=e.canPin,h=void 0===n?v.oT.NO:n,b=e.isPinned,y=void 0!==b&&b,x=e.canRemove,g=void 0!==x&&x,j=(0,f.o)(r).spec;return(0,m.jsx)(d.pZ,{value:"album",children:(0,m.jsxs)(i.W,{children:[g&&(0,m.jsx)(c.p,{uri:r,removeLabel:a.Ru.get("contextmenu.remove-from-library")}),t&&(0,m.jsx)(l.z,{spec:j,divider:"after",uri:t,displayText:a.Ru.get("contextmenu.go-to-artist-radio")}),h!==v.oT.NO&&(0,m.jsx)(s.k,{uri:r,canPin:h,isPinned:y,type:p.c.PRE_RELEASE_ALBUM,spec:j}),(0,m.jsx)(o.m,{uri:r,spec:j,displayText:a.Ru.get("context-menu.copy-album-link")}),(0,m.jsx)(u.q,{spec:j,divider:"before",uri:r})]})})}))},29077:(e,r,t)=>{t.d(r,{G:()=>S});var n=t(52542),a=t(97500),i=t.n(a),o=t(92107),l=t(13534);const u="YNXLVjlRXPfM4xObTojA",s="CVRy4NtxZYSle8dJ1E67",c="holKDGFNEFSz85czBeSv",d="gqidZhN1lgoZDfI_7E6w",v="_IQ8dgA5pEr_V8PfUkWa",f="xNkPMA_OvAxcFTdfyroI";var p=t(86070),m=function(e){var r=e.value,t=e.label,a=e.hasDivider,o=void 0!==a&&a;return(0,p.jsxs)("div",{className:c,"aria-hidden":"true",children:[(0,p.jsx)(l.E,{variant:"titleSmall",className:i()((0,n.A)({},v,o)),children:r}),(0,p.jsx)(l.E,{variant:"marginal",semanticColor:"textSubdued",children:t})]})},h=t(12341),b=t(30758),y=1e3,x=60*y,g=60*x,j=24*g;var k=t(81530),R=t(92200),w={days:0,hours:0,minutes:0,seconds:0};function A(e){return e>0?(r=e,t=Math.abs(r),{days:Math.floor(t/j),hours:Math.floor(t%j/g),minutes:Math.floor(t%g/x),seconds:Math.floor(t%x/y)}):w;var r,t}var P=t(18180),C=t(16920),S=function(e){var r=e.targetDate,t=e.className,a=e.onComplete,l=e.images,c=e.imageTitle,v=function(e,r){var t=(0,b.useRef)(r);t.current=r;var n=(0,b.useState)((function(){return A((0,k.u)(e))})),a=(0,h.A)(n,2),i=a[0],o=a[1];return(0,R.$)((function(r){var n,a=(0,k.u)(e),i=A(a);o(i),a<=0&&(r(),null===(n=t.current)||void 0===n||n.call(t))}),1e3),i}(r,a),y=v.days,x=v.hours,g=v.minutes,j=v.seconds,w=void 0!==l&&l.length>0&&c,S=o.Ru.get("web-player.prerelease.countdown_label",{days:y,hours:x,minutes:g,seconds:j});return(0,p.jsxs)("div",{className:i()(u,t,(0,n.A)({},s,w)),role:"timer",children:[(0,p.jsx)("span",{className:f,children:S}),w&&(0,p.jsx)(P.b,{images:l,type:C.c.ALBUM,shape:P.u.ROUNDED_CORNERS,className:d,title:c}),(0,p.jsx)(m,{value:y,label:o.Ru.get("web-player.prerelease.days",y),hasDivider:!0}),(0,p.jsx)(m,{value:x,label:o.Ru.get("web-player.prerelease.hours",x),hasDivider:!0}),(0,p.jsx)(m,{value:g,label:o.Ru.get("web-player.prerelease.minutes",g),hasDivider:!0}),(0,p.jsx)(m,{value:j,label:o.Ru.get("web-player.prerelease.seconds",j)})]})}},74351:(e,r,t)=>{t.d(r,{B:()=>o});var n=t(13534),a=t(13758),i=t(86070),o=function(e){var r=e.children;return(0,i.jsx)(n.E,{variant:"bodySmall",className:a.A.pretitle,children:r})}},81517:(e,r,t)=>{t.d(r,{h:()=>p});t(7651),t(30456),t(26701),t(37417),t(11737),t(51691),t(702),t(5672),t(43379),t(34192),t(88856),t(51565),t(18316);var n=t(52542),a=t(30758),i=t(57581),o=t(15868),l=t(86429),u=t(79469),s=t(3376),c=t(44551),d=t(86070);function v(e,r){var t=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);r&&(n=n.filter((function(r){return Object.getOwnPropertyDescriptor(e,r).enumerable}))),t.push.apply(t,n)}return t}function f(e){for(var r=1;r<arguments.length;r++){var t=null!=arguments[r]?arguments[r]:{};r%2?v(Object(t),!0).forEach((function(r){(0,n.A)(e,r,t[r])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(t)):v(Object(t)).forEach((function(r){Object.defineProperty(e,r,Object.getOwnPropertyDescriptor(t,r))}))}return e}var p=function(e){var r,t=e.children,n=e.action,v=e.uri,p=(0,l.V)(),m=(0,s.N)(u.JD);try{r=a.Children.only(t)}catch(e){return(0,d.jsx)(d.Fragment,{children:t})}return p?a.cloneElement(r,{onClick:function(){var e={triggerId:o.d,triggerAction:{type:n}};i.h.set((function(r){return f(f({},r),e)})),m.storeAction(u.j8,{operation:c.tS.ADD,uris:[v]})}}):(0,d.jsx)(d.Fragment,{children:t})}},53489:(e,r,t)=>{t.d(r,{v:()=>v});var n=t(12072),a=t(90457),i=t(11854),o=t(49190),l=t(92107),u=t(81517),s=t(86628),c=t(52834),d=t(86070),v=function(e){var r=e.uri,t=e.isBook,v=void 0!==t&&t,f=(0,s.w)({uri:r,isBook:v}),p=f.isPreSaved,m=f.addPresave,h=f.removePresave;return p?(0,d.jsx)(n.n,{onClick:h,iconTrailing:a.k,children:l.Ru.get("web-player.prerelease.presaved")}):(0,d.jsx)(u.h,{uri:r,action:c.no.SAVE_PRERELEASE,children:(0,d.jsx)(i.$,{disabled:void 0===p,onClick:m,iconTrailing:o.P,children:l.Ru.get("web-player.prerelease.presave")})})}},48891:(e,r,t)=>{t.r(r),t.d(r,{AlbumPrerelease:()=>Ce});t(30456),t(79024),t(25550),t(47994),t(43379),t(72636),t(2823),t(97460),t(29426),t(34192),t(88856),t(15342),t(93577),t(54520),t(91531),t(93678),t(34145);var n=t(97500),a=t.n(n),i=t(44286),o=t(13534),l=t(80366),u=t(92107),s=t(81530),c=t(45625),d=t(44206),v=t(12341),f=(t(60287),t(30758)),p=t(74002),m=t(69045),h=t(99217),b=t(79564),y=t(80021),x=t(87203),g=t(53489),j=t(11854),k=t(90823),R=t(12574),w=t(86070),A=function(e){var r=e.uri,t=(0,k.V)(r),n=(0,R.r)(p.k,{data:{uri:r||""}}),a=n.spec,i=n.logger,o=(0,f.useCallback)((function(){r&&(i.logInteraction(a.actionBarFactory().preSaveButtonFactory().hitUiNavigate({destination:r})),t())}),[t,a,r,i]);return r?(0,w.jsx)(j.$,{onClick:o,children:u.Ru.get("web-player.prerelease.listen_now")}):null},P=t(54249),C=function(e){var r,t,n,a=e.prerelease,i=e.backgroundColor,o=function(e){var r=(0,f.useState)((function(){return!!e&&(0,s.u)(e)<=0})),t=(0,v.A)(r,2),n=t[0],a=t[1];return(0,f.useEffect)((function(){if(e){var r=(0,s.u)(e);if(r<=0)a(!0);else{if(!(r>=36e5)){var t=setTimeout((function(){a(!0)}),r);return function(){clearTimeout(t)}}a(!1)}}}),[e]),n}(a.releaseDate),l=(0,R.r)(p.k,{data:{uri:a.uri}}),c=l.spec,d=l.UBIFragment,j=(0,P.j)();return(0,w.jsx)(m.E,{backgroundColor:i,children:(0,w.jsxs)(h.S,{children:[o?(0,w.jsx)(A,{uri:null===(r=a.content)||void 0===r?void 0:r.uri}):(0,w.jsx)(g.v,{uri:a.uri}),(0,w.jsx)(d,{spec:c,children:(0,w.jsx)(y.b,{menu:(0,w.jsx)(x.P,{uri:a.uri,artistUri:null===(t=a.content)||void 0===t?void 0:t.artists[0].uri}),children:(0,w.jsx)(b.e,{label:u.Ru.get("more.label.context",null===(n=a.content)||void 0===n?void 0:n.name),size:j})})})]})})};t(68216);var S=t(83643),I=t(29077),E=t(9754),T=t(26552),_=t(33598),D=t(17067),O=t(85925),N=t(2238),L=t(62400),M=t(26868),U=t(10833),B=t(74351),F=t(88420),z=t(47795),$=t(60455),G=t(42552);const H="LFDgGRo4wD273tY6cKQ0";var V=function(e){var r,t=e.prerelease,n=e.children;return(0,w.jsx)(S.h,{menu:(0,w.jsx)(x.P,{uri:t.uri,artistUri:null===(r=t.content)||void 0===r?void 0:r.artists[0].uri}),children:n})},W=function(e){var r,t=e.prerelease,n=e.backgroundColor,a=t.content,i=t.releaseDate,o=(0,$.y)(),l=o===z.E.SMALL||o===z.E.XSMALL,u=(0,R.r)(p.k,{data:{uri:t.uri}}),s=u.spec,c=u.logger,d=(0,f.useCallback)((function(e,r){if(s){var t=s.headerFactory().artistNameFactory().hitUiNavigate({destination:r.creator.uri});c.logInteraction(t)}}),[c,s]),v=a,m=(0,f.useMemo)((function(){return i?new Date(i):void 0}),[i]);return(0,w.jsxs)(E.z,{backgroundColor:n,size:E.K.LARGE,children:[(0,w.jsx)(D.h,{children:v.name?(0,w.jsx)(V,{prerelease:t,children:(0,w.jsx)(O.X,{text:v.name})}):null}),!l&&(0,w.jsx)(V,{prerelease:t,children:(0,w.jsx)(T.K,{images:v.coverArt.sources,name:null!==(r=v.name)&&void 0!==r?r:"",placeholderType:"album"})}),(0,w.jsxs)(_.Y,{children:[(0,w.jsx)(B.B,{children:(0,G.C)(v.type)}),(0,w.jsx)(V,{prerelease:t,children:(0,w.jsx)(F.mm,{scaleAtMinWidth:F.Cl,children:v.name})}),(0,w.jsxs)(N.X,{children:[(0,w.jsx)(L.j,{creators:v.artists,onCreatorClick:d}),(0,w.jsx)(U.J,{}),(0,w.jsx)(M.H,{releaseDate:i,datePrecision:void 0,timeZone:t.timezone})]}),m&&v.name?(0,w.jsx)(I.G,{images:l?v.coverArt.sources:[],className:H,imageTitle:v.name,targetDate:m}):null]})]})},X=t(62822),Z=t(93091),q=t.n(Z),K=(t(75380),t(81594)),Y=t(50218),J=t(87198),Q=t(10373),ee=t(93195),re=(t(7651),t(14551),t(9267),t(184),t(42486),t(86746),t(45434),t(70750),t(65594),t(78397),t(86295)),te=t(87718),ne=new re.l("albumPreReleaseTracks","query","dfbdcf2688995adc2c2196fcdd7802b2a5137a2549b361aa7fb23cd6493f4672",null),ae=t(75355),ie=t(4140);function oe(e,r){var t="undefined"!=typeof Symbol&&e[Symbol.iterator]||e["@@iterator"];if(!t){if(Array.isArray(e)||(t=function(e,r){if(e){if("string"==typeof e)return le(e,r);var t={}.toString.call(e).slice(8,-1);return"Object"===t&&e.constructor&&(t=e.constructor.name),"Map"===t||"Set"===t?Array.from(e):"Arguments"===t||/^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(t)?le(e,r):void 0}}(e))||r&&e&&"number"==typeof e.length){t&&(e=t);var n=0,a=function(){};return{s:a,n:function(){return n>=e.length?{done:!0}:{done:!1,value:e[n++]}},e:function(e){throw e},f:a}}throw new TypeError("Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.")}var i,o=!0,l=!1;return{s:function(){t=t.call(e)},n:function(){var e=t.next();return o=e.done,e},e:function(e){l=!0,i=e},f:function(){try{o||null==t.return||t.return()}finally{if(l)throw i}}}}function le(e,r){(null==r||r>e.length)&&(r=e.length);for(var t=0,n=Array(r);t<r;t++)n[t]=e[t];return n}var ue={totalLength:0,items:[]};function se(e){var r,t=e.preReleaseContent,n=[];if(null!=t&&t.tracks){var a,i=oe(t.tracks.items);try{for(i.s();!(a=i.n()).done;){var o,l,u,s,c=a.value;n.push({uri:c.uri,name:c.name?c.name:"",isPlayable:c.playability.playable,durationMs:null!==(o=null===(l=c.duration)||void 0===l?void 0:l.totalMilliseconds)&&void 0!==o?o:0,hasOriginalAudio:c.hasOriginalAudio,artists:ce(c.artists.items),isExplicit:(null===(u=c.contentRating)||void 0===u?void 0:u.label)===ie.x7.Explicit,is19PlusOnly:(null===(s=c.contentRating)||void 0===s?void 0:s.label)===ie.x7.NineteenPlus})}}catch(e){i.e(e)}finally{i.f()}}return{totalLength:null!==(r=null==t?void 0:t.tracks.totalCount)&&void 0!==r?r:0,items:n}}function ce(e){var r,t=[],n=oe(e);try{for(n.s();!(r=n.n()).done;){var a=r.value;"Artist"===a.data.__typename&&t.push({name:a.data.profile.name,uri:a.data.uri})}}catch(e){n.e(e)}finally{n.f()}return t}var de=[ee.$.INDEX,ee.$.TITLE_AND_ARTIST,ee.$.DURATION],ve=(0,f.memo)((function(e){var r=e.ariaLabel,t=e.nrTracks,n=e.prereleaseUri,a=e.highlightUri,i=e.scrollToIndex,o=e.usePlayContextItem,l=e.hasHeaderRow,u=void 0===l||l,s=e.initalTracks,c=(0,R.r)(p.k,{data:{uri:n}}),d=c.spec,m=c.UBIFragment,h=function(e){var r=(0,f.useContext)(ae.j).request,t=(0,f.useCallback)(function(){var t=(0,X.A)(q().mark((function t(n,a){var i,o,l,u,s;return q().wrap((function(t){for(;;)switch(t.prev=t.next){case 0:return t.next=2,r(ne,{uri:e,offset:n,limit:a});case 2:o=t.sent,l=oe((null==o||null===(i=o.data)||void 0===i?void 0:i.lookup)||[]),t.prev=4,l.s();case 6:if((u=l.n()).done){t.next=14;break}if("PreReleaseResponseWrapper"!==(s=u.value).__typename){t.next=12;break}if("PreRelease"!==s.data.__typename){t.next=12;break}if(s.data.uri!==e){t.next=12;break}return t.abrupt("return",se(s.data));case 12:t.next=6;break;case 14:t.next=19;break;case 16:t.prev=16,t.t0=t.catch(4),l.e(t.t0);case 19:return t.prev=19,l.f(),t.finish(19);case 22:return t.abrupt("return",ue);case 23:case"end":return t.stop()}}),t,null,[[4,16,19,22]])})));return function(e,r){return t.apply(this,arguments)}}(),[r,e]);return t}(n),b=(0,f.useRef)(!1),y=(0,f.useRef)(null),x=(0,f.useState)(null),g=(0,v.A)(x,2),j=g[0],k=g[1],A=(0,f.useCallback)((function(e){return{uri:e.uri}}),[]);(0,f.useEffect)((function(){y.current&&(j?y.current.scrollToIndex(j):i&&y.current.scrollToIndex(i))}),[j,i]);var P=(0,f.useCallback)(function(){var e=(0,X.A)(q().mark((function e(r,t){var n,i;return q().wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,h(r,t);case 2:return n=e.sent,a&&!j&&(i=n.items.findIndex((function(e){return(null==e?void 0:e.uri)===a})),k(i||-1)),e.abrupt("return",n);case 5:case"end":return e.stop()}}),e)})));return function(r,t){return e.apply(this,arguments)}}(),[h,a,j]),C=(0,f.useCallback)((function(e,r){var t=!b.current&&!!a&&a===e.uri;return t&&(b.current=!0),(0,w.jsx)(Y.d,{uri:e.uri,isPlayable:e.isPlayable,name:e.name,trackNumber:r+1,index:r,artists:e.artists,playcount:0,contextUri:n,duration_ms:e.hasOriginalAudio?e.durationMs:null,usePlayContextItem:o,isMOGEFRestricted:e.is19PlusOnly,isExplicit:e.isExplicit,shouldHighLight:t,isReleased:e.isPlayable},r+e.uri)}),[a,n,o]);return(0,w.jsx)(m,{spec:d,children:(0,w.jsx)(Q.a,{columns:de,children:(0,w.jsx)(J.S4,{ariaLabel:r,columns:de,hasHeaderRow:u,rowPlaceholder:K.Bz,renderRow:C,resolveItem:A,nrTracks:t,fetchTracks:P,limit:300,tracks:s,outerRef:y,columnPersistenceKey:"album-tracklist"},n)})})})),fe=(t(78551),t(82467),new re.l("albumPreRelease","query","cb7e121ae0c2d105ea9a8a5c8a003e520f333e0e94073032dcdbd548dd205d66",null)),pe=function(e,r){return(0,te.I)(fe,e,r)};function me(e,r){var t="undefined"!=typeof Symbol&&e[Symbol.iterator]||e["@@iterator"];if(!t){if(Array.isArray(e)||(t=function(e,r){if(e){if("string"==typeof e)return he(e,r);var t={}.toString.call(e).slice(8,-1);return"Object"===t&&e.constructor&&(t=e.constructor.name),"Map"===t||"Set"===t?Array.from(e):"Arguments"===t||/^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(t)?he(e,r):void 0}}(e))||r&&e&&"number"==typeof e.length){t&&(e=t);var n=0,a=function(){};return{s:a,n:function(){return n>=e.length?{done:!0}:{done:!1,value:e[n++]}},e:function(e){throw e},f:a}}throw new TypeError("Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.")}var i,o=!0,l=!1;return{s:function(){t=t.call(e)},n:function(){var e=t.next();return o=e.done,e},e:function(e){l=!0,i=e},f:function(){try{o||null==t.return||t.return()}finally{if(l)throw i}}}}function he(e,r){(null==r||r>e.length)&&(r=e.length);for(var t=0,n=Array(r);t<r;t++)n[t]=e[t];return n}function be(e){return e.includes("℗")?{type:"P",text:e}:{type:"C",text:e}}function ye(e){var r,t,n=e.preReleaseContent,a=void 0;if(n){var i,o,l,u,s,c,d=se(e);a={artists:xe(n.artists.items),name:null!==(i=n.name)&&void 0!==i?i:void 0,uri:n.uri,coverArt:{extractedColors:null===(o=n.coverArt)||void 0===o||null===(o=o.extractedColors)||void 0===o?void 0:o.colorRaw,sources:null!==(l=null===(u=n.coverArt)||void 0===u?void 0:u.sources)&&void 0!==l?l:[]},type:n.type,tracks:d,copyrights:null!==(s=null===(c=n.copyright)||void 0===c?void 0:c.split("\n").map(be))&&void 0!==s?s:[]}}return{uri:e.uri,releaseDate:null===(r=e.releaseDate)||void 0===r?void 0:r.isoString,timezone:null!==(t=e.timezone)&&void 0!==t?t:void 0,content:a}}function xe(e){var r,t=[],n=me(e);try{for(n.s();!(r=n.n()).done;){var a,i,o=r.value;if("Artist"===o.data.__typename)t.push({name:o.data.profile.name,id:o.data.id,uri:o.data.uri,images:null!==(a=null===(i=o.data.visuals.avatarImage)||void 0===i?void 0:i.sources)&&void 0!==a?a:[]})}}catch(e){n.e(e)}finally{n.f()}return t}var ge=t(14546),je=t(45497),ke=t(84827),Re=t(79431),we=t(16920);const Ae="IVrwmRlzBI3lrWleZGbW",Pe="nPhSYFMXHpfImT4H04k3";var Ce=function(e){var r,t,n,v,p,m,h,b,y,x,g,j,k,R,A=e.uri,P=function(e){var r=(arguments.length>1&&void 0!==arguments[1]?arguments[1]:pe)({uri:e},{staleTime:3e5,gcTime:36e5}),t=r.data;return{loading:r.loading,error:!!r.error,prerelease:(0,f.useMemo)((function(){if(!t)return null;var r,n=me(t.lookup);try{for(n.s();!(r=n.n()).done;){var a=r.value;if("PreReleaseResponseWrapper"===a.__typename&&"PreRelease"===a.data.__typename&&a.data.uri===e)return ye(a.data)}}catch(e){n.e(e)}finally{n.f()}return null}),[t,e])}}(A),S=P.prerelease,I=P.loading,E=P.error,T=function(e){var r,t=null==e||null===(r=e.content)||void 0===r||null===(r=r.coverArt.extractedColors)||void 0===r?void 0:r.hex;return(0,ge.z)(t),t}(S),_=parseInt(new URLSearchParams((0,i.zy)().search).get("index")||"0",10),D=(0,Re.P)({uri:A,pages:[{items:(R=(null==S||null===(r=S.content)||void 0===r?void 0:r.tracks.items)||[],R.filter((function(e){return e.isPlayable})).map((function(e){return{uri:e.uri,uid:null,type:we.c.TRACK,provider:null}})))}]},{featureIdentifier:"album_prerelease"}).usePlayContextItem;if(I||E||!S)return(0,w.jsx)(d.LoadingPage,{hasError:!!E,errorMessage:u.Ru.get("error.not_found.title.album")});if(null!=S&&null!==(t=S.content)&&void 0!==t&&t.uri&&function(e,r){var t;if(null===(t=e.content)||void 0===t||!t.uri||!e.releaseDate)return!1;var n=(0,s.u)(e.releaseDate);return!(n>0)&&n<=-1*r}(S,1728e5)){var O,N=(0,l.cA)(null==S||null===(O=S.content)||void 0===O?void 0:O.uri);if(N)return(0,w.jsx)(je.$,{to:N.toURLPath(!0)})}return(0,w.jsxs)("section",{className:Ae,children:[(0,w.jsx)(c.Q,{children:u.Ru.get("album.page-title",null!==(n=null===(v=S.content)||void 0===v?void 0:v.name)&&void 0!==n?n:"")}),(0,w.jsx)(W,{prerelease:S,backgroundColor:T}),(0,w.jsx)(C,{prerelease:S,backgroundColor:T}),null!==(p=S.content)&&void 0!==p&&p.tracks.totalLength?(0,w.jsxs)("div",{className:"contentSpacing",children:[(0,w.jsx)(o.E,{as:"h2",variant:"titleSmall",semanticColor:"textBase",children:u.Ru.get("web-player.prerelease.album_tracklist_preview")}),(0,w.jsx)(ve,{prereleaseUri:A,ariaLabel:null!==(m=null===(h=S.content)||void 0===h?void 0:h.name)&&void 0!==m?m:u.Ru.get("error.not_found.title.album"),nrTracks:null!==(b=null===(y=S.content)||void 0===y?void 0:y.tracks.totalLength)&&void 0!==b?b:0,scrollToIndex:_,usePlayContextItem:D,initalTracks:null===(x=S.content)||void 0===x?void 0:x.tracks.items,albumUri:null===(g=S.content)||void 0===g?void 0:g.uri})]}):null,(0,w.jsx)("div",{className:a()(Pe,"contentSpacing"),children:(0,w.jsx)(ke.Z,{copyrights:null!==(j=null===(k=S.content)||void 0===k?void 0:k.copyrights)&&void 0!==j?j:[]})})]})}},81530:(e,r,t)=>{t.d(r,{u:()=>n});t(68216);function n(e){var r=new Date;return(e instanceof Date?e:new Date(e)).getTime()-r.getTime()}},86628:(e,r,t)=>{t.d(r,{w:()=>f});var n=t(62822),a=t(93091),i=t.n(a),o=(t(16347),t(18653),t(30758)),l=t(74002),u=t(92107),s=t(62774),c=t(57261),d=t(5958),v=t(12574),f=function(e){var r=e.uri,t=e.isBook,a=(0,d.p)("prerelease"),f=a.add,p=a.remove,m=(0,c.o)("prerelease",[r]).at(0),h=(0,s.d)().enqueueSnackbar,b=(0,v.r)(l.k,{data:{uri:r}}),y=b.spec,x=b.logger;return{isPreSaved:m,addPresave:(0,o.useCallback)((0,n.A)(i().mark((function e(){return i().wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return x.logInteraction(y.actionBarFactory().preSaveButtonFactory().hitPresave({prereleaseId:r,itemToBePresaved:r,contextUri:r})),e.next=3,f(r);case 3:h(t?u.Ru.get("web-player.prerelease.audiobook_feedback_presaved"):u.Ru.get("web-player.prerelease.album_feedback_presaved"));case 4:case"end":return e.stop()}}),e)}))),[f,h,t,x,y,r]),removePresave:(0,o.useCallback)((0,n.A)(i().mark((function e(){return i().wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return x.logInteraction(y.actionBarFactory().preSaveButtonFactory().hitRemovePresave({prereleaseId:r,itemToBeRemovedFromPresaved:r,contextUri:r})),e.next=3,p(r);case 3:case"end":return e.stop()}}),e)}))),[x,p,y,r])}}},92200:(e,r,t)=>{t.d(r,{$:()=>a});t(60287);var n=t(30758),a=function(e,r){var t=(0,n.useRef)(e);(0,n.useEffect)((function(){t.current=e}),[e]),(0,n.useEffect)((function(){var e=void 0;function n(){e&&clearInterval(e)}if(null!==r)return e=setInterval((function(){t.current(n)}),r),n}),[r])}},14546:(e,r,t)=>{t.d(r,{f:()=>l,z:()=>o});var n=t(30758),a=t(23100),i=t(19424);function o(e){var r=arguments.length>1&&void 0!==arguments[1]?arguments[1]:a.l0o,t=(0,i.as)();return(0,n.useEffect)((function(){return e&&t((0,i.Mo)(e)),function(){t((0,i.Hf)())}}),[e,t]),e||r}var l=function(e){return o(e.color,e.fallbackColor),null}}}]);
//# sourceMappingURL=xpui-routes-album-prerelease.js.map