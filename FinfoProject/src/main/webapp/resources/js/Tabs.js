;( function( window ) {
	
	'use strict';

	function extend( a, b ) {
		for( var key in b ) { 
			if( b.hasOwnProperty( key ) ) {
				a[key] = b[key];
			}
		}
		return a;
	}

	function Tabs( el, options ) {
		this.el = el;
		this.options = extend( {}, this.options );
  		extend( this.options, options );
  		this._init();
	}

	Tabs.prototype.options = {
		start : 0
	};

	Tabs.prototype._init = function() {
		// 탭 요소
		this.tabs = [].slice.call( this.el.querySelectorAll( 'nav > ul > li' ) );
		// 컨텐츠 아이템
		this.items = [].slice.call( this.el.querySelectorAll( '.tab-wrap > section' ) );
		// current index
		this.current = -1;
		// 현제 컨텐츠 아이템 보여줌
		this._show();
		// 이벤트 초기화
		this._initEvents();
	};

	Tabs.prototype._initEvents = function() {
		var self = this;
		this.tabs.forEach( function( tab, idx ) {
			tab.addEventListener( 'click', function( ev ) {
				ev.preventDefault();
				self._show( idx );
			} );
		} );
	};

	Tabs.prototype._show = function( idx ) {
		if( this.current >= 0 ) {
			this.tabs[ this.current ].className = this.items[ this.current ].className = '';
		}
		// 변경
		this.current = idx != undefined ? idx : this.options.start >= 0 && this.options.start < this.items.length ? this.options.start : 0;
		this.tabs[ this.current ].className = 'tab-current';
		this.items[ this.current ].className = 'tab-current';
	};

	window.Tabs = Tabs;

})( window );