;/*FB_PKG_DELIM*/

__d("IGDSEyeOffPanoOutlineIcon",["IGDSSVGIconBase.react","react"],(function(a,b,c,d,e,f,g){"use strict";var h=d("react");function a(a){return h.jsx(c("IGDSSVGIconBase.react"),babelHelpers["extends"]({},a,{viewBox:"0 0 24 24",children:h.jsx("path",{d:"M2.936 8.014A12.792 12.792 0 0 0 .559 11.82a1 1 0 0 0 1.881.677 10.987 10.987 0 0 1 1.988-3.15 1 1 0 1 0-1.492-1.332Zm20.271 13.779-5.916-5.916a4.969 4.969 0 0 0 .133-.582.983.983 0 0 0-1.107-1.108 3.315 3.315 0 0 1-.678.038l-3.366-3.366a3.3 3.3 0 0 1 .036-.676.99.99 0 0 0-1.134-1.107 4.623 4.623 0 0 0-.553.132L8.13 6.717a10.395 10.395 0 0 1 13.429 5.779 1 1 0 0 0 1.881-.677C23.413 11.74 20.542 4 12 4a12.104 12.104 0 0 0-5.367 1.22L2.207.792A1 1 0 0 0 .793 2.207l21 21a1 1 0 0 0 1.414-1.414ZM11.382 14.9l-3.044-3.03a1.005 1.005 0 0 0-1.636.326 5.495 5.495 0 0 0 1.31 6.074 5.495 5.495 0 0 0 6.075 1.31 1.005 1.005 0 0 0 .325-1.636Z",fillRule:"evenodd"})}))}a.displayName=a.name+" [from "+f.id+"]";b=h.memo(a);g["default"]=b}),98);
__d("IGDSInfoOutlineIcon",["IGDSInfoPanoOutlineIcon","react"],(function(a,b,c,d,e,f,g){"use strict";var h=d("react");function a(a){return h.jsx(c("IGDSInfoPanoOutlineIcon"),babelHelpers["extends"]({},a))}a.displayName=a.name+" [from "+f.id+"]";b=h.memo(a);g["default"]=b}),98);
__d("IGDSRemixPanoOutline24Icon",["IGDSSVGIconBase.react","react"],(function(a,b,c,d,e,f,g){"use strict";var h=d("react");function a(a){return h.jsx(c("IGDSSVGIconBase.react"),babelHelpers["extends"]({},a,{viewBox:"0 0 24 24",children:h.jsx("path",{d:"M11.999 6.999a1 1 0 0 0-1 1V11H8a1 1 0 0 0 0 2h2.999v2.998a1 1 0 0 0 2 0V13H16a1 1 0 0 0 0-2h-3.001V7.999a1 1 0 0 0-1-1ZM21.001 11a1 1 0 0 0-1 1v3.104c0 2.355-.552 3.12-1.14 3.732-.637.614-1.404 1.165-3.758 1.165H8.896c-2.352 0-3.12-.552-3.731-1.139a3.729 3.729 0 0 1-.644-.864H7a1 1 0 0 0 0-2H2a1 1 0 0 0-1 1v5a1 1 0 0 0 2 0v-2.65a6.257 6.257 0 0 0 .751.928c1.076 1.036 2.362 1.725 5.146 1.725h6.206c2.786 0 4.072-.69 5.171-1.751 1.037-1.073 1.727-2.36 1.727-5.146V12a1 1 0 0 0-1-1ZM22 .999a1 1 0 0 0-1 1v2.653a6.2 6.2 0 0 0-.751-.926c-1.073-1.037-2.36-1.727-5.146-1.727H8.897c-2.788 0-4.074.69-5.17 1.751C2.69 4.82 2 6.104 2 8.896V12a1 1 0 0 0 2 0V8.896c0-2.358.55-3.122 1.14-3.731.635-.614 1.402-1.166 3.757-1.166h6.206c2.355 0 3.12.552 3.733 1.142a3.705 3.705 0 0 1 .638.858H17a1 1 0 0 0 0 2h5a1 1 0 0 0 1-1v-5a1 1 0 0 0-1-1Z"})}))}a.displayName=a.name+" [from "+f.id+"]";b=h.memo(a);g["default"]=b}),98);
__d("PolarisAPICommentOnPost",["PolarisInstapi"],(function(a,b,c,d,e,f,g){"use strict";function a(a,b,c){b={comment_text:b,replied_to_comment_id:c};return d("PolarisInstapi").apiPost("/api/v1/web/comments/{media_id}/add/",{path:{media_id:a},body:b}).then(function(a){return a.data})}g.commentOnPost=a}),98);
__d("PolarisPendingCommentActions",["fbt","PolarisAPICommentOnPost","PolarisAdsEngagementLogger","PolarisEngagementLogger","PolarisLogger","PolarisPendingCommentState","PolarisSentryFeedbackActions","nullthrows","polarisPostSelectors","polarisUserSelectors"],(function(a,b,c,d,e,f,g,h){"use strict";function a(a,b,c,d,e,f){return{type:"CHANGE_PENDING_COMMENT",postId:a,text:b,repliedToCommentId:c,repliedToCommentAuthorId:d,repliedToUsername:e,repliedToCommentParentId:f}}function b(a){return{type:"CLEAR_PENDING_COMMENT",postId:a}}function i(a,b,e,f){return function(g,j){g({type:"COMMIT_PENDING_COMMENT_REQUESTED",postId:a});d("PolarisLogger").logAction("comment",{source:e});var k=j(),l=k.pendingComments.get(a,d("PolarisPendingCommentState").EMPTY_PENDING_COMMENT),m=l.repliedToCommentAuthorId,n=l.repliedToCommentId,o=l.text;l=k.posts.byId.get(a,{hasRankedComments:!1});var p=l.hasRankedComments,q=Boolean((l=d("polarisUserSelectors").getViewer(k))==null?void 0:l.isVerified);return d("PolarisAPICommentOnPost").commentOnPost(a,o,n).then(function(h){var i=c("nullthrows")(d("polarisUserSelectors").getViewer(j())).id;h=h.id;g({type:"COMMIT_PENDING_COMMENT_SUCCEEDED",postId:a,commentText:o,hasRankedComments:p,commentAuthorId:i,commentAuthorIsVerified:q,commentId:h,postedAt:Math.round(Date.now()/1e3),repliedToCommentId:n});d("PolarisLogger").logAction("commentSuccess",{source:e});i={commentAuthorId:i,commentId:h,containerModule:e,mediaId:a,mediaAuthorId:b,mediaType:d("polarisPostSelectors").getMediaTypeById(k,a),parentCommentId:n,parentCommentAuthorId:m};f!=null?d("PolarisAdsEngagementLogger").logAdComment(i,f):d("PolarisEngagementLogger").logOrganicComment(i)},function(c){var f;f=((f=c.responseObject)==null?void 0:f.spam)||!1;if(f){var j,k,l;j=(j=c.responseObject)==null?void 0:j.feedback_title;k=(k=c.responseObject)==null?void 0:k.feedback_message;l=(l=c.responseObject)==null?void 0:l.feedback_url;c=(c=c.responseObject)==null?void 0:c.feedback_action;g(d("PolarisSentryFeedbackActions").showSentryFeedback({source:e,sourceOfAction:"commit_pending_comment",title:j,message:k,url:l,action:c}))}g({type:"COMMIT_PENDING_COMMENT_FAILED",postId:a,toast:f?void 0:{text:h._("Couldn't post comment."),actionText:h._("Retry"),actionHandler:function(){return g(i(a,b,e))}}});d("PolarisLogger").logAction("commentFailure",{source:e})})}}g.changePendingComment=a;g.clearPendingComment=b;g.commitPendingComment=i}),98);
__d("PolarisPostCommentInputReplyingToBar.react",["fbt","IGDSIconButton.react","IGDSXFilledIcon","react"],(function(a,b,c,d,e,f,g,h){"use strict";var i=d("react"),j={root:{backgroundColor:"x19g9edo",borderBottom:"x18oi6gw",display:"x78zum5",flexDirection:"x1q0g3np",justifyContent:"x1qughib",paddingTop:"xz9dl7a",paddingEnd:"x1pi30zi",paddingBottom:"xsag5q8",paddingStart:"x1swvt13",alignItems:"x6s0dn4",$$css:!0},iOSStyling:{backgroundColor:"xjbqb8w",paddingStart:"x1e558r4",paddingEnd:"x150jy0e",paddingBottom:"x1a8lsjc",paddingTop:"xexx8yu",$$css:!0},clearButton:{":active_opacity":"x1d5wrs8",$$css:!0}};function a(a){var b=a.isRevampedMobileInput;b=b===void 0?!1:b;var d=a.onClearReply;a=a.username;return i.jsxs("div",{className:"x18oi6gw x78zum5 x1q0g3np x1qughib x6s0dn4"+(b?" xjbqb8w xexx8yu x150jy0e x1a8lsjc x1e558r4":" x19g9edo xz9dl7a x1pi30zi xsag5q8 x1swvt13"),children:[i.jsx("span",{children:h._("Replying to {username}",[h._param("username",a)])}),i.jsx(c("IGDSIconButton.react"),{onClick:d,padding:0,xstyle:j.clearButton,children:i.jsx(c("IGDSXFilledIcon"),{alt:"at",size:14})})]})}a.displayName=a.name+" [from "+f.id+"]";g["default"]=a}),98);
__d("PolarisInstagramWebTypeaheadResultSelectFalcoEvent",["PolarisFalcoLogger"],(function(a,b,c,d,e,f,g){"use strict";var h={falco:!0,pigeon:!1};a={log:function(a){d("PolarisFalcoLogger").FalcoLogger.log("instagram_web_typeahead_result_select",a(),{},h)}};b=a;g["default"]=b}),98);
__d("PolarisInstagramWebTypeaheadSearchAttemptFalcoEvent",["PolarisFalcoLogger"],(function(a,b,c,d,e,f,g){"use strict";var h={falco:!0,pigeon:!1};a={log:function(a){d("PolarisFalcoLogger").FalcoLogger.log("instagram_web_typeahead_search_attempt",a(),{},h)}};b=a;g["default"]=b}),98);
__d("PolarisStoryTypeaheadConstants",[],(function(a,b,c,d,e,f){"use strict";a="touch_mention";f.TOUCH_MENTION_ID=a}),66);
__d("PolarisStoryTypeaheadResultsList.react",["cx","fbt","PolarisDOMListener.react","PolarisIGCorePressable","PolarisIGVirtualList.react","PolarisSearchConstants","PolarisStoryTypeaheadConstants","react"],(function(a,b,c,d,e,f,g,h,i){"use strict";var j=d("react"),k=100,l=6;function m(a){return a.filter(function(a){return a.type===d("PolarisSearchConstants").USER_RESULT})}a=function(a){babelHelpers.inheritsLoose(b,a);function b(){var b,e;for(var f=arguments.length,g=new Array(f),h=0;h<f;h++)g[h]=arguments[h];return(b=e=a.call.apply(a,[this].concat(g))||this,e.state={results:[]},e.$1=function(a,b){b.preventDefault();b=e.props.pendingQueryStartIndex;e.props.onResultSelect(a,b)},e.$2=function(a){var b=a.index;a.isVisible;var f=e.state.results[b];return j.jsxs(c("PolarisIGCorePressable"),{className:"_acn7",id:d("PolarisStoryTypeaheadConstants").TOUCH_MENTION_ID,onPress:function(a){return e.$1(f,a)},children:[j.jsx("img",{alt:i._("{username}'s profile picture",[i._param("username",f.username)]),className:"_acn8",id:d("PolarisStoryTypeaheadConstants").TOUCH_MENTION_ID,src:f.profilePictureUrl}),j.jsx("div",{className:"_acn9",children:f.username})]})},e.$3=function(a){a.stopPropagation()},b)||babelHelpers.assertThisInitialized(e)}var e=b.prototype;e.componentDidMount=function(){this.setState({results:m(this.props.results)})};b.getDerivedStateFromProps=function(a,b){return babelHelpers["extends"]({},b,{results:m(a.results)})};e.render=function(){return j.jsxs("div",{className:"_acna",id:d("PolarisStoryTypeaheadConstants").TOUCH_MENTION_ID,children:[j.jsx(c("PolarisDOMListener.react"),{event:"touchmove",handler:this.$3,passive:!1,target:document}),j.jsx(c("PolarisIGVirtualList.react"),{containerSize:"auto",direction:"horizontal",estimatedItemSize:k,initialRenderCount:l,itemCount:this.state.results.length,overscanCount:l,renderer:this.$2})]})};return b}(j.Component);g["default"]=a}),98);
__d("PolarisTypeaheadResultsItem.react",["cx","fbt","PolarisPostsStatistic.react","PolarisSearchConstants","PolarisSocialProofStatisticVariant","react"],(function(a,b,c,d,e,f,g,h,i){"use strict";var j=d("react");a=function(a){babelHelpers.inheritsLoose(b,a);function b(){var b,c;for(var e=arguments.length,f=new Array(e),g=0;g<e;g++)f[g]=arguments[g];return(b=c=a.call.apply(a,[this].concat(f))||this,c.$2=function(a){c.props.onClick&&c.props.onClick(c.props.result,a)},c.$3=function(){c.props.onMouseEnter&&c.props.onMouseEnter(c.props.index,d("PolarisSearchConstants").SEARCH_SELECTED_METHOD.SELECTED_WITH_MOUSE)},b)||babelHelpers.assertThisInitialized(c)}var e=b.prototype;e.$1=function(a){a.preventDefault()};e.$4=function(a){switch(a.type){case d("PolarisSearchConstants").USER_RESULT:return j.jsxs("div",{className:"_acmr",children:[j.jsx("img",{alt:i._("{username}'s profile picture",[i._param("username",a.username)]),className:"_acms",src:a.profilePictureUrl}),j.jsxs("div",{className:"_acmt",children:[j.jsxs("div",{className:"_acmu",children:[a.username,a.isVerified?j.jsx("div",{className:"_acmv _9ys8"}):null]}),j.jsx("span",{className:"_acmw",children:a.fullName})]})]});case d("PolarisSearchConstants").HASHTAG_RESULT:var b=a.mediaCount;return j.jsxs("div",{className:"_acmt",children:[j.jsx("span",{className:"_acmu",children:"#"+a.name}),b!=null&&j.jsx("div",{className:"_acmw",children:j.jsx(c("PolarisPostsStatistic.react"),{value:b,variant:d("PolarisSocialProofStatisticVariant").SOCIAL_PROOF_STATS_VARIANTS.unstyled})})]});case d("PolarisSearchConstants").LOCATION_RESULT:return j.jsxs("div",{className:"_acmt",children:[j.jsx("span",{className:"_acmu",children:a.name}),j.jsx("span",{className:"_acmw",children:a.address})]});default:return null}};e.render=function(){var a=this.props,b=a.isSelected,c=a.result,d=a.showLargeAvatars;a=a.size;a=a===void 0?"default":a;c=this.$4(c);return c?j.jsx("button",{className:(d?"":"_acmx")+(d?" _acmy":"")+(a==="extraLarge"?" _acmz":"")+(b?" _acm-":""),onClick:this.$2,onMouseDown:this.$1,onMouseEnter:this.$3,children:c}):null};return b}(j.Component);g["default"]=a}),98);
__d("PolarisTypeaheadResultsList.react",["cx","IGDSSpinner.react","PolarisSearchConstants","PolarisTypeaheadResultsItem.react","react"],(function(a,b,c,d,e,f,g,h){"use strict";var i=d("react");b=d("react");var j=b.useEffect,k=b.useRef;function a(a){var b=a.loading,e=a.onResultHighlight,f=a.onResultSelect,g=a.pendingQueryStartIndex,h=a.results,l=a.searchContext,m=a.selectedIndex,n=a.showLargeAvatars,o=a.showResultsCondensed,p=a.size,q=k(),r=k();j(function(){if(q.current&&m!=null){var a=q.current.clientHeight,b=4;q.current.scrollTop=a*Math.floor(m/b)}},[m]);a=function(a){switch(l){case d("PolarisSearchConstants").SEARCH_CONTEXT.USER:return a.filter(function(a){return a.type===d("PolarisSearchConstants").USER_RESULT});case d("PolarisSearchConstants").SEARCH_CONTEXT.HASHTAG:return a.filter(function(a){return a.type===d("PolarisSearchConstants").HASHTAG_RESULT});case d("PolarisSearchConstants").SEARCH_CONTEXT.LOCATION:return a.filter(function(a){return a.type===d("PolarisSearchConstants").LOCATION_RESULT});case d("PolarisSearchConstants").SEARCH_CONTEXT.BLENDED:default:return a}};var s=function(a,b){b.preventDefault(),f(a,g)},t=function(a){switch(a.type){case d("PolarisSearchConstants").USER_RESULT:return"user_"+a.username;case d("PolarisSearchConstants").HASHTAG_RESULT:return"hashtag_"+a.name;case d("PolarisSearchConstants").LOCATION_RESULT:return"location_"+a.external_id;default:return null}},u=function(a,b){return i.jsx("div",{ref:b===0?r:null,children:i.jsx(c("PolarisTypeaheadResultsItem.react"),{index:b,isSelected:b===m,onClick:s,onMouseEnter:e,result:a,showLargeAvatars:n,size:p})},t(a))};return i.jsxs("div",{className:"_acm_",children:[b&&i.jsx("div",{className:(o?"_acn0":"")+(o?"":" _acn1"),children:i.jsx("div",{className:"_acn2"+(o?"":" _acn3")+(o?" _acn4":""),children:i.jsx(c("IGDSSpinner.react"),{size:"medium"})})}),!b&&i.jsx("div",{className:"_acn5"+(o?" _acn6":""),ref:q,children:a(h).map(u)})]})}a.displayName=a.name+" [from "+f.id+"]";g["default"]=a}),98);
__d("PolarisTypeahead.react",["PolarisConfig","PolarisIGHashtagRegex","PolarisIGUsernameRegex","PolarisInstagramWebTypeaheadResultSelectFalcoEvent","PolarisInstagramWebTypeaheadSearchAttemptFalcoEvent","PolarisLogger","PolarisSearchConstants","PolarisStoryTypeaheadResultsList.react","PolarisTypeaheadResultsList.react","react"],(function(a,b,c,d,e,f,g){"use strict";var h=d("react");b=d("react");var i=b.useCallback,j=b.useEffect,k=b.useRef,l=b.useState,m=10,n=new RegExp(d("PolarisIGHashtagRegex").HASH_CHARS),o=new RegExp(d("PolarisIGUsernameRegex").MENTIONS_MARKER),p={typeaheadAttempt:"typeaheadAttempt",typeaheadClickSuccess:"typeaheadClickSuccess"};function q(a){d("PolarisLogger").logAction(p.typeaheadClickSuccess,{searchContext:a}),c("PolarisInstagramWebTypeaheadResultSelectFalcoEvent").log(function(){return{frontend_env:d("PolarisConfig").getFrontendEnv(),search_context:a}})}function r(a){d("PolarisLogger").logAction(p.typeaheadAttempt,{searchContext:a}),c("PolarisInstagramWebTypeaheadSearchAttemptFalcoEvent").log(function(){return{frontend_env:d("PolarisConfig").getFrontendEnv(),search_context:a}})}function a(a){var b=a.initialSearchContext;b=b===void 0?d("PolarisSearchConstants").SEARCH_CONTEXT.BLENDED:b;var e=a.inputString,f=e===void 0?"":e;e=a.showLargeAvatars;e=e===void 0?!1:e;var g=a.showResultsCondensed;g=g===void 0?!0:g;var n=a.searchOnMount,o=n===void 0?!1:n;n=a.className;var p=a.loading,v=a.results,w=a.size,x=a.useSearchTriggers,y=a.cursorIndex,z=a.currentLocation,A=a.onClearSearch,B=a.onSearchLocations,C=a.onSearch,D=a.rankToken,E=a.onResultSelect,F=a.onResultHighlight;a=a.selectedIndex;var G=l(x?null:0),H=G[0],I=G[1];G=l(b);var J=G[0],K=G[1],L=k(),M=k(),N=i(function(a){J===d("PolarisSearchConstants").SEARCH_CONTEXT.LOCATION?B(a,D):C(J,a,D),window.clearTimeout(L.current)},[z==null?void 0:z.latitude,z==null?void 0:z.longitude,C,B,D,J]);j(function(){if(o&&H!==null){var a=x?f.slice(H,y):f;window.clearTimeout(L.current);L.current=window.setTimeout(function(){return N(a)},m);return}},[y,N,f,H,o,x]);j(function(){return function(){A(),window.clearTimeout(L.current)}},[A]);var O=i(function(){var a=x?null:0;I(a);A()},[A,x]);j(function(){var a;if(((a=M.current)==null?void 0:a.inputString)!==f||o&&y!==((a=M.current)==null?void 0:a.cursorIndex)){a=f.slice(y-1,y);if(x&&s(a)){var b;(b=M.current)==null?void 0:b.onClearSearch();b=u(a);I(y);K(b)}else if(H!==null&&(!f||x&&t(a)))O();else if(H!==null){var c=x?f.slice(H,y):f;window.clearTimeout(L.current);L.current=window.setTimeout(function(){r(J),N(c)},m)}}M.current={onClearSearch:A,inputString:f,cursorIndex:y}},[y,N,O,f,A,H,J,o,x]);b=function(a,b){O(),E(a,b),q(J)};return h.jsxs("div",{className:n,children:[H!=null&&!o&&h.jsx(c("PolarisTypeaheadResultsList.react"),{loading:p,onResultHighlight:F,onResultSelect:b,pendingQueryStartIndex:H,results:v,searchContext:J,selectedIndex:a,showLargeAvatars:e,showResultsCondensed:g,size:w}),H!=null&&o&&h.jsx(c("PolarisStoryTypeaheadResultsList.react"),{onResultHighlight:F,onResultSelect:b,pendingQueryStartIndex:H,results:v,searchContext:J})]})}a.displayName=a.name+" [from "+f.id+"]";function s(a){return n.test(a)||o.test(a)}function t(a){return/\s/.test(a)}function u(a){if(n.test(a))return d("PolarisSearchConstants").SEARCH_CONTEXT.HASHTAG;return o.test(a)?d("PolarisSearchConstants").SEARCH_CONTEXT.USER:d("PolarisSearchConstants").SEARCH_CONTEXT.BLENDED}g["default"]=a}),98);
__d("PolarisTypeaheadContainer.react",["PolarisReactRedux","PolarisSearchActions","PolarisTypeahead.react","react"],(function(a,b,c,d,e,f,g){"use strict";d("react");function a(a){a=a.search;return{loading:a.loading,rankToken:a.rankToken,results:a.results,selectedIndex:a.selectedIndex}}function b(a){return{onClearSearch:function(){a(d("PolarisSearchActions").clearSearch())},onSearch:function(b,c,e){a(d("PolarisSearchActions").search(b,c,e))},onSearchLocations:function(b,c,e,f){a(d("PolarisSearchActions").searchLocations(b,c,e,f))},onResultHighlight:function(b,c){a(d("PolarisSearchActions").selectResult(b,c))}}}e=d("PolarisReactRedux").connect(a,b)(c("PolarisTypeahead.react"));g["default"]=e}),98);
__d("PolarisTypeaheadInput.react",["Keys","PolarisConfig","PolarisInstagramWebTypeaheadResultSelectFalcoEvent","PolarisLogger","PolarisReactRedux","PolarisSearchActions","PolarisSearchConstants","react","react-textarea-autosize-wwwig","stylex"],(function(a,b,c,d,e,f,g){"use strict";var h=d("react"),i={typeaheadClickSuccess:"typeaheadClickSuccess"},j={root:{fontFamily:"x1i0vuye",$$css:!0}};e=function(a){babelHelpers.inheritsLoose(b,a);function b(){var b,e;for(var f=arguments.length,g=new Array(f),h=0;h<f;h++)g[h]=arguments[h];return(b=e=a.call.apply(a,[this].concat(g))||this,e.state={hasFocus:!1},e.$3=function(a){e.props.onBlur&&e.props.onBlur(a),e.setState({hasFocus:!1})},e.$4=function(a){e.props.onFocus&&e.props.onFocus(a),e.setState({hasFocus:!0})},e.$5=function(a){e.props.onChange(a.target.value,a.target.selectionEnd)},e.$2=function(){var a=e.$1;a&&(a.focus(),a.setSelectionRange(e.props.cursorIndex,e.props.cursorIndex))},e.$6=function(a){e.$1=a,e.props.inputRef&&e.props.inputRef(a)},e.$7=function(a){var b=e.props.search,f=b.loading,g=b.results,h=b.searchedForQuery;b=b.selectedIndex;!a.altKey&&(g.length>0||f)&&(a.which===c("Keys").DOWN?(b==null?e.props.onTypeaheadResultHighlight(0,d("PolarisSearchConstants").SEARCH_SELECTED_METHOD.SELECTED_WITH_KEYBOARD):b<g.length-1&&e.props.onTypeaheadResultHighlight(b+1,d("PolarisSearchConstants").SEARCH_SELECTED_METHOD.SELECTED_WITH_KEYBOARD),a.preventDefault()):a.which===c("Keys").UP?(b!=null&&b>0&&e.props.onTypeaheadResultHighlight(b-1,d("PolarisSearchConstants").SEARCH_SELECTED_METHOD.SELECTED_WITH_KEYBOARD),a.preventDefault()):a.which===c("Keys").RETURN&&(g!=null&&g.length>0&&(b!=null?(e.props.onTypeaheadResultSelect(g[b],e.props.cursorIndex-h.length),k()):e.props.onTypeaheadResultHighlight(0,d("PolarisSearchConstants").SEARCH_SELECTED_METHOD.SELECTED_WITH_KEYBOARD)),a.preventDefault()))},b)||babelHelpers.assertThisInitialized(e)}var e=b.prototype;e.shouldComponentUpdate=function(a,b){return this.props.value!==a.value||this.props.cursorIndex!==a.cursorIndex||this.props.disabled!==a.disabled||this.state.hasFocus!==b.hasFocus};e.componentDidUpdate=function(a,b){this.state.hasFocus&&this.$1!=null&&this.props.cursorIndex!==this.$1.selectionEnd&&this.$2()};e.render=function(){var a=this.props,b=a.autosize;a.cursorIndex;a.inputRef;a.onTypeaheadResultHighlight;a.onTypeaheadResultSelect;a.search;var d=a.xstyle;a=babelHelpers.objectWithoutPropertiesLoose(a,["autosize","cursorIndex","inputRef","onTypeaheadResultHighlight","onTypeaheadResultSelect","search","xstyle"]);d={className:c("stylex")(j.root,d),onChange:this.$5,onBlur:this.$3,onFocus:this.$4,onKeyDown:this.$7,autoComplete:"off",autoCorrect:"off"};return b===!0?h.jsx(c("react-textarea-autosize-wwwig"),babelHelpers["extends"]({},a,d,{ref:this.$6})):h.jsx("textarea",babelHelpers["extends"]({},a,d,{ref:this.$6}))};return b}(h.Component);function k(){d("PolarisLogger").logAction(i.typeaheadClickSuccess),c("PolarisInstagramWebTypeaheadResultSelectFalcoEvent").log(function(){return{frontend_env:d("PolarisConfig").getFrontendEnv()}})}function a(a){return{search:a.search}}function b(a){return{onTypeaheadResultHighlight:function(b,c){a(d("PolarisSearchActions").selectResult(b,c))}}}f=d("PolarisReactRedux").connect(a,b)(e);g["default"]=f}),98);
__d("PolarisPostCommentInputForm.react",["cx","fbt","CarouselAutoplayContext","IGDSButton.react","IGDSSpinner.react","PolarisEmojiButton.react","PolarisPostCommentInputReplyingToBar.react","PolarisTypeaheadContainer.react","PolarisTypeaheadInput.react","PolarisUA","react","stylex"],(function(a,b,c,d,e,f,g,h,i){"use strict";var j=d("react");b=d("react");var k=b.useCallback,l=b.useContext,m=i._("Add a comment\u2026"),n={textArea:{backgroundColor:"xvbhtw8",borderTop:"x76ihet",borderEnd:"xwmqs3e",borderBottom:"x112ta8",borderStart:"xxxdfa6",color:"x5n08af",display:"x78zum5",flexGrow:"x1iyjqo2",fontSize:"x1qlqyl8",height:"x1d6elog",maxHeight:"xlk1fp6",outline:"x1a2a7pz",paddingTop:"xexx8yu",paddingEnd:"x4uap5",paddingBottom:"x18d9i69",paddingStart:"xkhd6sd",resize:"xtt52l0",width:"xnalus7",":disabled_opacity":"x1bq4at4",":disabled_pointerEvents":"xaqnwrm","::placeholder_color":"xs3hnx8",$$css:!0},emojiButton:{paddingTop:"x1y1aw1k",paddingEnd:"x1pi30zi",paddingBottom:"xwib8y2",paddingStart:"x1swvt13",$$css:!0},emojiButtonV2:{paddingTop:"x1y1aw1k",paddingEnd:"xn6708d",paddingBottom:"xwib8y2",paddingStart:"xkhd6sd",$$css:!0},emojiButtonOnRevampFeed:{marginEnd:"x1w0mnb",$$css:!0},familiarFeedEmojiButton:{order:"xo1ph6p",paddingTop:"xexx8yu",paddingEnd:"x4uap5",paddingBottom:"x18d9i69",paddingStart:"xkhd6sd",$$css:!0},typeahead:{borderTop:"x6umtig",borderEnd:"x1b1mbwd",borderBottom:"xaqea5y",borderStart:"xav7gou",boxShadow:"x1jumc70",marginTop:"xdj266r",marginEnd:"x11i5rnm",marginBottom:"xat24cr",marginStart:"x1mh8g0r",$$css:!0},typeaheadMobile:{position:"x10l6tqk",start:"x17qophe",end:"xds687c",bottom:"x58jzl7",$$css:!0},typeaheadDesktop:{backgroundColor:"xvbhtw8",boxShadow:"x122emky",minWidth:"x92112o",position:"x10l6tqk",top:"xdsb8wn",$$css:!0},typeaheadShowAboveInput:{bottom:"x10w3d4m",top:"x80663w",$$css:!0},shouldShowReplyBar:{marginBottom:"xyorhqc",$$css:!0}},o={root:{opacity:"x1hc1fzr",color:"xkx5cws",$$css:!0}};function a(a){var b=a.autosize,e=a.cursorIndex,f=a.familiarFeed,g=a.hasPostButton,h=a.inputRef,p=a.isEmojiTrayOpen,q=a.isOnDesktopFeed,r=a.isRevampedMobileInput;r=r===void 0?!1:r;var s=a.isRevampVersion,t=a.isSubmitDisabled,u=a.isTypeaheadInputDisabled,v=a.onBlur,w=a.onChange,x=a.onClearReply,y=a.onEmojiClick,z=a.onEmojiTrayOpen,A=a.onFocus,B=a.onKeyPress,C=a.onKeyUp,D=a.onPostButtonClicked,E=a.onTypeaheadResultSelect,F=a.openTypeaheadAbove,G=a.pendingComment,H=a.repliedToUsername,I=a.replyingToBarWithinInput;I=I===void 0?!1:I;a=a.showTypeahead;var J=l(c("CarouselAutoplayContext")),K=J.pauseCarouselAutoplay;J=s&&q===!0;var L=I&&H!=null&&H!==""&&x!=null,M=k(function(){K(),A()},[K,A]);return j.jsxs(j.Fragment,{children:[j.jsxs("form",{className:"_aidk"+(s?" _aidl":"")+(J?" _aie4":"")+(r?"":" _ak6u")+(r?" _akhr":"")+(I&&H!=null?" _akhm":""),"data-testid":void 0,method:"POST",children:[u&&j.jsx(c("IGDSSpinner.react"),{position:"absolute"}),I&&x!=null&&H!=null&&j.jsx("div",{className:""+(L?" xyorhqc":""),children:j.jsx(c("PolarisPostCommentInputReplyingToBar.react"),{isRevampedMobileInput:r,onClearReply:x,username:H})}),j.jsxs("div",{className:"_akhn",children:[d("PolarisUA").isDesktop()&&j.jsx("div",{className:c("stylex")([q===!0?n.emojiButtonV2:n.emojiButton,f?n.familiarFeedEmojiButton:null,J&&n.emojiButtonOnRevampFeed]),children:j.jsx(c("PolarisEmojiButton.react"),{color:f?"ig-secondary-text":void 0,isEmojiTrayOpen:p,onEmojiClick:y,setEmojiTrayOpen:z,size:f&&(!s||J)?"small":void 0})}),j.jsx(c("PolarisTypeaheadInput.react"),{"aria-label":m,autosize:b,cursorIndex:e,"data-testid":void 0,disabled:u,inputRef:h,onBlur:v,onChange:w,onFocus:M,onKeyPress:B,onKeyUp:C,onTypeaheadResultSelect:E,placeholder:m,value:G,xstyle:n.textArea}),g&&(f?!t:!0)&&j.jsx("div",{className:f?"_aidp":"",children:j.jsx(c("IGDSButton.react"),{"data-testid":void 0,display:"block",isDisabled:t,label:i._("Post"),onClick:D,variant:"primary_link",xstyle:t?o.root:void 0})})]})]}),a?j.jsx(c("PolarisTypeaheadContainer.react"),{className:c("stylex")([n.typeahead,d("PolarisUA").isMobile()?n.typeaheadMobile:n.typeaheadDesktop,F?n.typeaheadShowAboveInput:null]),cursorIndex:e,inputString:G,onResultSelect:E,showResultsCondensed:!0,useSearchTriggers:!0}):null]})}a.displayName=a.name+" [from "+f.id+"]";g["default"]=a}),98);
__d("polarisUpdateTextOnTypeaheadSelect",["PolarisSearchConstants"],(function(a,b,c,d,e,f,g){"use strict";function a(a,b,c,e){var f="";switch(a.type){case d("PolarisSearchConstants").USER_RESULT:f=a.username;break;case d("PolarisSearchConstants").HASHTAG_RESULT:f=a.name;break;default:return{updatedText:c,updatedCursorIndex:e}}a=" ";b=c.substring(0,b);c=c.substring(e);e=b+f+a+c;c=b.length+f.length+a.length;return{updatedText:e,updatedCursorIndex:c}}g["default"]=a}),98);
__d("PolarisPostCommentInput.react",["cx","fbt","IGDSText.react","PolarisFastLink.react","PolarisIGCoreConstants","PolarisInteractionsLogger","PolarisLinkBuilder","PolarisLogger","PolarisPanavisionQEHelpers","PolarisPendingCommentActions","PolarisPostCommentInputForm.react","PolarisPostCommentInputReplyingToBar.react","PolarisReactRedux","PolarisRoutes","PolarisSearchActions","PolarisUA","PolarisUserAvatar.react","browserHistory","gkx","joinClasses","nullthrows","one-trace","polarisUpdateTextOnTypeaheadSelect","polarisUserSelectors","react"],(function(a,b,c,d,e,f,g,h,i){"use strict";var j=d("react");function k(a){a=j.jsx(c("PolarisFastLink.react"),{href:d("PolarisLinkBuilder").buildLoginLink(d("browserHistory").browserHistory.location.pathname,{source:"post_comment_input"}),children:j.jsx(c("IGDSText.react").Body,{color:"link",zeroMargin:!0,children:i._("Log in")})});return j.jsx("span",{children:j.jsx(c("IGDSText.react").Body,{color:"secondaryText",zeroMargin:!0,children:i._("{loginLink} to like or comment.",[i._param("loginLink",a)])})})}k.displayName=k.name+" [from "+f.id+"]";function l(a){return j.jsx("span",{children:i._("Follow {username} to like or comment.",[i._param("username",a.username)])})}l.displayName=l.name+" [from "+f.id+"]";h=function(a){babelHelpers.inheritsLoose(b,a);function b(b){var e;e=a.call(this,b)||this;e.$3=null;e.focusAndScroll=function(){var a=function(){var a=c("nullthrows")(e.$1);a.focus();d("PolarisUA").isMobile()&&window.setTimeout(function(){typeof a.scrollIntoView==="function"&&(a.scrollIntoView(!0),window.scrollBy(0,-200))},10)};e.setState({hasBeenFocused:!0},function(){window.setTimeout(function(){return a()})})};e.$5=function(a){var b=e.props,c=b.adInfo,d=b.onCommentChange,f=b.onCommentSubmit,g=b.repliedToCommentId;b=b.repliedToCommentParentId;a.preventDefault();if(!e.$4()){d(e.state.pendingComment);e.setState({needsFlush:!1});a=null;c!=null&&(c==null?void 0:c.tracking_token)!=null&&(c==null?void 0:c.ad_id)!=null&&(a={adId:c==null?void 0:c.ad_id,adTrackingToken:c==null?void 0:c.tracking_token});f(e.state.pendingComment,g,b,a).then(function(){e.$1&&e.$1.blur()})}};e.$6=function(a){a.key==="Enter"&&!a.shiftKey&&e.$5(a)};e.$7=function(a){a.stopPropagation()};e.$8=function(a,b){e.state.commentAttempt||d("PolarisLogger").logAction("commentAttempt",{source:e.props.analyticsContext,type:e.props.isVideo===!0?"video":"photo",isLoggedIn:e.props.isLoggedIn}),e.setState({commentAttempt:!0,cursorIndex:b,isEmojiTrayOpen:e.$2!=null,needsFlush:!0,pendingComment:a})};e.$9=function(a){e.$1=a,c("gkx")("4923")&&(a!=null?e.$3=c("one-trace").trackTypingPerf(a,"PostCommentInput"):e.$3!=null&&(e.$3(),e.$3=null))};e.$10=function(){e.setState({hasBeenFocused:!0,hasFocus:!0})};e.$11=function(){e.setState({hasFocus:!1})};e.$12=function(a){var b=e.props,c=b.analyticsContext,f=b.id;b=b.ownerId;d("PolarisInteractionsLogger").logInteractionAction({containerModule:c,eventName:"instagram_organic_comment_button",mediaId:f,mediaAuthorId:b});e.$5(a)};e.$13=function(a,b){a=c("polarisUpdateTextOnTypeaheadSelect")(a,b,e.state.pendingComment,e.state.cursorIndex);b=a.updatedCursorIndex;a=a.updatedText;e.$8(a,b)};e.$14=function(a){var b,c;e.$2=a;b=((b=e.$1)==null?void 0:b.selectionStart)||0;c=((c=e.$1)==null?void 0:c.selectionEnd)||0;c=e.state.pendingComment.substring(0,b)+a+e.state.pendingComment.substring(c);b=b+a.length;e.$8(c,b)};e.$15=function(a){a===!0&&d("PolarisLogger").logAction("emojiButtonClicked",{source:e.props.analyticsContext,type:e.props.isVideo===!0?"video":"photo",isLoggedIn:e.props.isLoggedIn}),e.setState({isEmojiTrayOpen:a})};var f=c("gkx")("8645");e.emojiPickerTray=j.createRef();e.state={commentAttempt:!1,hasBeenFocused:!1,needsFlush:!1,pendingComment:f?"":b.pendingComment,cursorIndex:b.pendingComment.length,isEmojiTrayOpen:!1};return e}var e=b.prototype;e.componentWillUnmount=function(){!this.props.commentSaveIsInFlight&&this.state.needsFlush&&this.state.pendingComment.length>0&&this.props.onCommentChange(this.state.pendingComment)};e.componentDidUpdate=function(a,b){var c=this.props,d=c.commentSaveIsInFlight;c=c.pendingComment;this.$1&&!b.hasBeenFocused&&this.state.hasBeenFocused&&this.$1.focus();a.pendingComment!==c&&(this.setState({pendingComment:c,cursorIndex:c.length}),this.$1&&this.$1.focus());b=b.isEmojiTrayOpen!==this.state.isEmojiTrayOpen;(this.$2!=null||b)&&(this.$2=null,this.$1&&(b&&this.setState({cursorIndex:this.$1.selectionEnd}),this.$1.focus()));a.commentSaveIsInFlight&&!d&&c===""&&this.setState({pendingComment:"",needsFlush:!0})};e.shouldComponentUpdate=function(a,b){return this.props.className!==a.className||this.props.commentSaveIsInFlight!==a.commentSaveIsInFlight||this.props.pendingComment!==a.pendingComment||this.state.pendingComment!==b.pendingComment||this.state.hasBeenFocused!==b.hasBeenFocused||this.state.hasFocus!==b.hasFocus||this.state.isEmojiTrayOpen!==b.isEmojiTrayOpen};e.$4=function(){return this.state.pendingComment.trim().length===0||this.props.commentSaveIsInFlight};e.$16=function(){if(this.props.isRevampVersion)return!1;return this.$1?this.props.viewportHeight-this.$1.getBoundingClientRect().bottom>200:!0};e.render=function(){var a=this.props,b=a.analyticsContext,e=a.canViewerProvideFeedback,f=a.className,g=a.hasRichCommentInput,h=a.isLoggedIn,i=a.isRevampedMobileInput;i=i===void 0?!1:i;var m=a.isRevampVersion,n=a.onClearReply,o=a.ownerUsername,p=a.repliedToUsername,q=a.replyingToBarWithinInput;q=q===void 0?!1:q;a=a.viewerProfilePicture;var r=d("browserHistory").browserHistory.location.pathname===d("PolarisRoutes").FEED_PATH||d("browserHistory").browserHistory.location.pathname===d("PolarisRoutes").ADS_ACTIVITY_FEED||d("browserHistory").browserHistory.location.pathname===d("PolarisRoutes").ADS_ACTIVITY_PATH;r=r&&this.props.inModal!==!0&&d("PolarisUA").isDesktop();b=d("PolarisUA").isDesktop()&&b==="reelsTab"&&m;var s=r&&d("PolarisPanavisionQEHelpers").hasFamiliarFeed()||m;return j.jsxs("section",{className:c("joinClasses")((g===!0?"_aaod":"")+" _aaoe"+(s&&!b?" _agne":"")+(b?" _aiiy":""),f),children:[j.jsxs("div",{className:"_aaof"+(m?" _aiam":"")+(m&&r?" _aiv2":"")+(b?" _aiiz":"")+(i?" _akm2":""),children:[g===!0&&a!=null&&a!==""&&j.jsx(c("PolarisUserAvatar.react"),{className:"_aaog"+(m&&!b?" _aian":"")+(b?" _aii-":""),isLink:!1,profilePictureUrl:a,size:b?c("PolarisIGCoreConstants").AVATAR_SIZES.extraSmall:c("PolarisIGCoreConstants").AVATAR_SIZES.small}),!h||!e?j.jsx("div",{className:"_af6c",children:h?j.jsx(l,{username:c("nullthrows")(o)}):j.jsx(k,{})}):j.jsx(c("PolarisPostCommentInputForm.react"),{autosize:this.props.forceTextareaAutosize===!0||this.state.hasBeenFocused||this.state.pendingComment!=="",cursorIndex:this.state.cursorIndex,familiarFeed:s,hasPostButton:this.props.hasPostButton,inputRef:this.$9,isEmojiTrayOpen:this.state.isEmojiTrayOpen,isOnDesktopFeed:r,isRevampedMobileInput:i,isRevampVersion:this.props.isRevampVersion,isSubmitDisabled:this.$4(),isTypeaheadInputDisabled:this.props.commentSaveIsInFlight,onBlur:this.$11,onChange:this.$8,onClearReply:n,onEmojiClick:this.$14,onEmojiTrayOpen:this.$15,onFocus:this.$10,onKeyPress:this.$6,onKeyUp:this.$7,onPostButtonClicked:this.$12,onTypeaheadResultSelect:this.$13,openTypeaheadAbove:!this.$16(),pendingComment:this.state.pendingComment,repliedToUsername:p,replyingToBarWithinInput:q,showTypeahead:h&&e&&this.state.hasFocus===!0})]}),p!=null&&p!==""&&!q&&d("PolarisUA").isMobile()&&j.jsx(c("PolarisPostCommentInputReplyingToBar.react"),{onClearReply:n,username:p})]})};return b}(j.Component);h.defaultProps={forceTextareaAutosize:d("PolarisUA").isMobile(),hasRichCommentInput:!1};function a(a,b){var e=a.pendingComments.get(b.id),f=a.navigation.pageIdentifier||"";return{analyticsContext:f,commentSaveIsInFlight:(e==null?void 0:e.committing)||!1,loading:a.search.loading,ownerUsername:(f=b.postOwnerUsername)!=null?f:c("nullthrows")(d("polarisUserSelectors").getUserById(a,b.ownerId).username),pendingComment:(e==null?void 0:e.text)||"",repliedToCommentAuthorId:e==null?void 0:e.repliedToCommentAuthorId,repliedToCommentId:e==null?void 0:e.repliedToCommentId,repliedToUsername:e==null?void 0:e.repliedToUsername,repliedToCommentParentId:e==null?void 0:e.repliedToCommentParentId,results:a.search.results,searchedForQuery:a.search.searchedForQuery,selectedIndex:a.search.selectedIndex,viewportHeight:a.displayProperties.viewportHeight}}function b(a,b){return{onCommentChange:function(c,e,f,g,h){a(d("PolarisPendingCommentActions").changePendingComment(b.id,c,e,f,g,h))},onClearReply:function(){a(d("PolarisPendingCommentActions").clearPendingComment(b.id))},onCommentSubmit:function(c,e,f,g){return b.onCommentSubmitOverride!=null?b.onCommentSubmitOverride(c,e,f,g):a(d("PolarisPendingCommentActions").commitPendingComment(b.id,b.ownerId,b.analyticsContext,g))},onTypeaheadResultHighlight:function(b,c){a(d("PolarisSearchActions").selectResult(b,c))}}}function e(a,b,c){return babelHelpers["extends"]({},a,b,c,{onCommentChange:function(c){return b.onCommentChange(c,a.repliedToCommentId,a.repliedToCommentAuthorId,a.repliedToUsername)}})}f=d("PolarisReactRedux").connect(a,b,e,{forwardRef:!0})(h);a=f;g["default"]=a}),98);