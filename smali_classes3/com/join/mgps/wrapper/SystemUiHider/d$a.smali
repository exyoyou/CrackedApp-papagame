.class Lcom/join/mgps/wrapper/SystemUiHider/d$a;
.super Landroid/widget/TabHost;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/wrapper/SystemUiHider/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final b:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;[[Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "tabs"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/webkit/WebView;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/d$a;->b:Landroid/webkit/WebView;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    const-string v0, "android.webkit.WebView"

    .line 37
    .line 38
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v3, "setWebContentsDebuggingEnabled"

    .line 43
    .line 44
    new-array v4, v1, [Ljava/lang/Class;

    .line 45
    .line 46
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 47
    .line 48
    aput-object v5, v4, v2

    .line 49
    .line 50
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 57
    .line 58
    .line 59
    new-array v3, v1, [Ljava/lang/Object;

    .line 60
    .line 61
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 62
    .line 63
    aput-object v4, v3, v2

    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/d$a;->b:Landroid/webkit/WebView;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/d$a;->b:Landroid/webkit/WebView;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/d$a;->b:Landroid/webkit/WebView;

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/d$a;->b:Landroid/webkit/WebView;

    .line 85
    .line 86
    new-instance v3, Lcom/join/mgps/wrapper/SystemUiHider/d$a$a;

    .line 87
    .line 88
    invoke-direct {v3, p0}, Lcom/join/mgps/wrapper/SystemUiHider/d$a$a;-><init>(Lcom/join/mgps/wrapper/SystemUiHider/d$a;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/d$a;->b:Landroid/webkit/WebView;

    .line 95
    .line 96
    new-instance v3, Lcom/join/mgps/wrapper/SystemUiHider/d$a$b;

    .line 97
    .line 98
    invoke-direct {v3, p0}, Lcom/join/mgps/wrapper/SystemUiHider/d$a$b;-><init>(Lcom/join/mgps/wrapper/SystemUiHider/d$a;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 102
    .line 103
    .line 104
    new-instance v0, Lcom/join/mgps/wrapper/SystemUiHider/d$a$c;

    .line 105
    .line 106
    invoke-direct {v0, p0}, Lcom/join/mgps/wrapper/SystemUiHider/d$a$c;-><init>(Lcom/join/mgps/wrapper/SystemUiHider/d$a;)V

    .line 107
    .line 108
    .line 109
    new-instance v3, Lcom/join/mgps/wrapper/SystemUiHider/d$a$d;

    .line 110
    .line 111
    invoke-direct {v3, p0}, Lcom/join/mgps/wrapper/SystemUiHider/d$a$d;-><init>(Lcom/join/mgps/wrapper/SystemUiHider/d$a;)V

    .line 112
    .line 113
    .line 114
    new-instance v4, Landroid/widget/LinearLayout;

    .line 115
    .line 116
    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 120
    .line 121
    .line 122
    new-instance v5, Landroid/widget/TabWidget;

    .line 123
    .line 124
    invoke-direct {v5, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    .line 125
    .line 126
    .line 127
    const v6, 0x1020013

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    .line 131
    .line 132
    .line 133
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 134
    .line 135
    const/4 v7, -0x2

    .line 136
    const/4 v8, -0x1

    .line 137
    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    .line 142
    .line 143
    new-instance v5, Landroid/widget/FrameLayout;

    .line 144
    .line 145
    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 146
    .line 147
    .line 148
    const p1, 0x1020011

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5, p1}, Landroid/view/View;->setId(I)V

    .line 152
    .line 153
    .line 154
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 155
    .line 156
    invoke-direct {p1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v5, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v3}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Landroid/widget/TabHost;->setup()V

    .line 169
    .line 170
    .line 171
    array-length p1, p2

    .line 172
    const/4 v3, 0x0

    .line 173
    :goto_0
    if-ge v3, p1, :cond_1

    .line 174
    .line 175
    aget-object v4, p2, v3

    .line 176
    .line 177
    aget-object v5, v4, v2

    .line 178
    .line 179
    invoke-virtual {p0, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    aget-object v4, v4, v1

    .line 184
    .line 185
    invoke-virtual {v5, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-virtual {v4, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-virtual {p0, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 194
    .line 195
    .line 196
    add-int/lit8 v3, v3, 0x1

    .line 197
    .line 198
    goto :goto_0

    .line 199
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/wrapper/SystemUiHider/d$a;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/wrapper/SystemUiHider/d$a;->b:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object p0
.end method
