.class Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase;
.super Landroid/widget/TabHost;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/wrapper/TabbedHelpViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabsConnectorBase"
.end annotation


# instance fields
.field private final wv:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;[[Ljava/lang/String;)V
    .locals 9

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
    iput-object v0, p0, Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase;->wv:Landroid/webkit/WebView;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase$1;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase$1;-><init>(Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase;)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase$2;

    .line 25
    .line 26
    invoke-direct {v2, p0}, Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase$2;-><init>(Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase;)V

    .line 27
    .line 28
    .line 29
    new-instance v3, Landroid/widget/LinearLayout;

    .line 30
    .line 31
    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 36
    .line 37
    .line 38
    new-instance v5, Landroid/widget/TabWidget;

    .line 39
    .line 40
    invoke-direct {v5, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    const v6, 0x1020013

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    .line 47
    .line 48
    .line 49
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 50
    .line 51
    const/4 v7, -0x2

    .line 52
    const/4 v8, -0x1

    .line 53
    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    .line 58
    .line 59
    new-instance v5, Landroid/widget/FrameLayout;

    .line 60
    .line 61
    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    const p1, 0x1020011

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, p1}, Landroid/view/View;->setId(I)V

    .line 68
    .line 69
    .line 70
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 71
    .line 72
    invoke-direct {p1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v5, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v2}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/widget/TabHost;->setup()V

    .line 85
    .line 86
    .line 87
    array-length p1, p2

    .line 88
    const/4 v2, 0x0

    .line 89
    :goto_0
    if-ge v2, p1, :cond_0

    .line 90
    .line 91
    aget-object v3, p2, v2

    .line 92
    .line 93
    aget-object v5, v3, v1

    .line 94
    .line 95
    invoke-virtual {p0, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    aget-object v3, v3, v4

    .line 100
    .line 101
    invoke-virtual {v5, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {p0, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 110
    .line 111
    .line 112
    add-int/lit8 v2, v2, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase;->wv:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object p0
.end method
