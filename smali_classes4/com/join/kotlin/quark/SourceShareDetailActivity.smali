.class public final Lcom/join/kotlin/quark/SourceShareDetailActivity;
.super Lcom/join/kotlin/base/activity/BaseVmDbActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/quark/proxy/SourceShareClickProxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/base/activity/BaseVmDbActivity<",
        "Lcom/join/kotlin/quark/viewmodel/SourceShareDetailViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/x4;",
        ">;",
        "Lcom/join/kotlin/quark/proxy/SourceShareClickProxy;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0012\u0010#\u001a\u00020$2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0016J\u0008\u0010\'\u001a\u00020$H\u0002J\u0008\u0010(\u001a\u00020$H\u0014J\u0008\u0010)\u001a\u00020$H\u0016J\u0008\u0010*\u001a\u00020$H\u0016J\u0008\u0010+\u001a\u00020$H\u0016J\u0008\u0010,\u001a\u00020$H\u0016J\u0008\u0010-\u001a\u00020$H\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020!0 X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/join/kotlin/quark/SourceShareDetailActivity;",
        "Lcom/join/kotlin/base/activity/BaseVmDbActivity;",
        "Lcom/join/kotlin/quark/viewmodel/SourceShareDetailViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/ActivitySourceShareDetailBinding;",
        "Lcom/join/kotlin/quark/proxy/SourceShareClickProxy;",
        "<init>",
        "()V",
        "extBean",
        "Lcom/join/mgps/dto/ExtBean;",
        "getExtBean",
        "()Lcom/join/mgps/dto/ExtBean;",
        "setExtBean",
        "(Lcom/join/mgps/dto/ExtBean;)V",
        "qkPosition",
        "",
        "getQkPosition",
        "()Ljava/lang/String;",
        "setQkPosition",
        "(Ljava/lang/String;)V",
        "itemBean",
        "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;",
        "getItemBean",
        "()Lcom/join/kotlin/quark/model/bean/SourceListItemBean;",
        "setItemBean",
        "(Lcom/join/kotlin/quark/model/bean/SourceListItemBean;)V",
        "quarkInstalled",
        "",
        "getQuarkInstalled",
        "()Z",
        "setQuarkInstalled",
        "(Z)V",
        "loadSir",
        "Lcom/kingja/loadsir/core/LoadService;",
        "",
        "appCaceDir",
        "initView",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "initWebSet",
        "onResume",
        "createObserver",
        "onBackClick",
        "onShareClick",
        "onSaveClick",
        "onSearchClick",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private appCaceDir:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private extBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private itemBean:Lcom/join/kotlin/quark/model/bean/SourceListItemBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private loadSir:Lcom/kingja/loadsir/core/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingja/loadsir/core/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private qkPosition:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private quarkInstalled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getLoadSir$p(Lcom/join/kotlin/quark/SourceShareDetailActivity;)Lcom/kingja/loadsir/core/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/quark/SourceShareDetailActivity;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final initView$lambda$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static final initView$lambda$4(Lcom/join/kotlin/quark/SourceShareDetailActivity;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/SourceShareDetailActivity;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "loadSir"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-static {v0}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->showLoading(Lcom/kingja/loadsir/core/b;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/kotlin/quark/SourceShareDetailActivity;->itemBean:Lcom/join/kotlin/quark/model/bean/SourceListItemBean;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;->getDisk_url()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/x4;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/x4;->l:Landroid/webkit/WebView;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;->getDisk_url()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method

.method private final initWebSet()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;->l:Landroid/webkit/WebView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;->l:Landroid/webkit/WebView;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;->l:Landroid/webkit/WebView;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;->l:Landroid/webkit/WebView;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;->l:Landroid/webkit/WebView;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const/4 v2, -0x1

    .line 79
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 80
    .line 81
    .line 82
    const-string v0, "cacheH5"

    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iput-object v0, p0, Lcom/join/kotlin/quark/SourceShareDetailActivity;->appCaceDir:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;

    .line 100
    .line 101
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;->l:Landroid/webkit/WebView;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;

    .line 115
    .line 116
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;->l:Landroid/webkit/WebView;

    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 123
    .line 124
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;

    .line 132
    .line 133
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;->l:Landroid/webkit/WebView;

    .line 134
    .line 135
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;

    .line 147
    .line 148
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;->l:Landroid/webkit/WebView;

    .line 149
    .line 150
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const/16 v4, 0x64

    .line 155
    .line 156
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;

    .line 164
    .line 165
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;->l:Landroid/webkit/WebView;

    .line 166
    .line 167
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;

    .line 179
    .line 180
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;->l:Landroid/webkit/WebView;

    .line 181
    .line 182
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;

    .line 194
    .line 195
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;->l:Landroid/webkit/WebView;

    .line 196
    .line 197
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;

    .line 209
    .line 210
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;->l:Landroid/webkit/WebView;

    .line 211
    .line 212
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;

    .line 224
    .line 225
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;->l:Landroid/webkit/WebView;

    .line 226
    .line 227
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    const-string v4, "UTF-8"

    .line 232
    .line 233
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;

    .line 241
    .line 242
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;->l:Landroid/webkit/WebView;

    .line 243
    .line 244
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;

    .line 256
    .line 257
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;->l:Landroid/webkit/WebView;

    .line 258
    .line 259
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 264
    .line 265
    .line 266
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 267
    .line 268
    const/16 v1, 0x1b

    .line 269
    .line 270
    if-le v0, v1, :cond_0

    .line 271
    .line 272
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;

    .line 277
    .line 278
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/x4;->l:Landroid/webkit/WebView;

    .line 279
    .line 280
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-static {v0, v3}, Lcom/aggmoread/sdk/z/a/u/v;->a(Landroid/webkit/WebSettings;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .line 286
    .line 287
    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 290
    .line 291
    .line 292
    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic j(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/quark/SourceShareDetailActivity;->initView$lambda$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Lcom/join/kotlin/quark/SourceShareDetailActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/quark/SourceShareDetailActivity;->initView$lambda$4(Lcom/join/kotlin/quark/SourceShareDetailActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createObserver()V
    .locals 0

    return-void
.end method

.method public final getExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/SourceShareDetailActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getItemBean()Lcom/join/kotlin/quark/model/bean/SourceListItemBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/SourceShareDetailActivity;->itemBean:Lcom/join/kotlin/quark/model/bean/SourceListItemBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getQkPosition()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/SourceShareDetailActivity;->qkPosition:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getQuarkInstalled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/quark/SourceShareDetailActivity;->quarkInstalled:Z

    .line 2
    .line 3
    return v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/kotlin/quark/SourceShareDetailActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lcom/papa/sim/statistic/Event;->visitPCPageZone:Lcom/papa/sim/statistic/Event;

    .line 16
    .line 17
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 18
    .line 19
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/join/kotlin/quark/SourceShareDetailActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 23
    .line 24
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    const-string v0, "itemBean"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/join/kotlin/quark/SourceShareDetailActivity;->itemBean:Lcom/join/kotlin/quark/model/bean/SourceListItemBean;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/SourceShareDetailViewModel;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/join/kotlin/quark/viewmodel/SourceShareDetailViewModel;->getItemBean()Landroidx/lifecycle/MutableLiveData;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/join/kotlin/quark/SourceShareDetailActivity;->itemBean:Lcom/join/kotlin/quark/model/bean/SourceListItemBean;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    const-string v0, "qkPosition"

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Ljava/lang/String;

    .line 70
    .line 71
    iput-object p1, p0, Lcom/join/kotlin/quark/SourceShareDetailActivity;->qkPosition:Ljava/lang/String;

    .line 72
    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/x4;

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/SourceShareDetailViewModel;

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lcom/join/android/app/mgsim/wufun/databinding/x4;->u(Lcom/join/kotlin/quark/viewmodel/SourceShareDetailViewModel;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/x4;

    .line 93
    .line 94
    invoke-virtual {p1, p0}, Lcom/join/android/app/mgsim/wufun/databinding/x4;->t(Lcom/join/kotlin/quark/proxy/SourceShareClickProxy;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/x4;

    .line 102
    .line 103
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/x4;->l:Landroid/webkit/WebView;

    .line 104
    .line 105
    new-instance v0, Lcom/join/kotlin/quark/p0;

    .line 106
    .line 107
    invoke-direct {v0}, Lcom/join/kotlin/quark/p0;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/x4;

    .line 118
    .line 119
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/x4;->d:Landroid/widget/RelativeLayout;

    .line 120
    .line 121
    const-string v0, "rlContent"

    .line 122
    .line 123
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    new-instance v0, Lcom/join/kotlin/quark/q0;

    .line 127
    .line 128
    invoke-direct {v0, p0}, Lcom/join/kotlin/quark/q0;-><init>(Lcom/join/kotlin/quark/SourceShareDetailActivity;)V

    .line 129
    .line 130
    .line 131
    invoke-static {p1, v0}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->loadServiceInit(Landroid/view/View;Lkotlin/jvm/functions/Function0;)Lcom/kingja/loadsir/core/b;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iput-object p1, p0, Lcom/join/kotlin/quark/SourceShareDetailActivity;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 136
    .line 137
    const/4 v0, 0x0

    .line 138
    if-nez p1, :cond_2

    .line 139
    .line 140
    const-string p1, "loadSir"

    .line 141
    .line 142
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    move-object p1, v0

    .line 146
    :cond_2
    invoke-static {p1}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->showLoading(Lcom/kingja/loadsir/core/b;)V

    .line 147
    .line 148
    .line 149
    invoke-direct {p0}, Lcom/join/kotlin/quark/SourceShareDetailActivity;->initWebSet()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/x4;

    .line 157
    .line 158
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/x4;->l:Landroid/webkit/WebView;

    .line 159
    .line 160
    const/4 v1, 0x2

    .line 161
    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lcom/join/kotlin/quark/SourceShareDetailActivity;->itemBean:Lcom/join/kotlin/quark/model/bean/SourceListItemBean;

    .line 165
    .line 166
    if-eqz p1, :cond_3

    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;->getDisk_url()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    if-eqz v1, :cond_3

    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    check-cast v1, Lcom/join/android/app/mgsim/wufun/databinding/x4;

    .line 179
    .line 180
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/x4;->l:Landroid/webkit/WebView;

    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;->getDisk_url()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    :cond_3
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/x4;

    .line 194
    .line 195
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/x4;->l:Landroid/webkit/WebView;

    .line 196
    .line 197
    new-instance v1, Lcom/join/kotlin/quark/SourceShareDetailActivity$initView$5;

    .line 198
    .line 199
    invoke-direct {v1, p0}, Lcom/join/kotlin/quark/SourceShareDetailActivity$initView$5;-><init>(Lcom/join/kotlin/quark/SourceShareDetailActivity;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 203
    .line 204
    .line 205
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 206
    .line 207
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 208
    .line 209
    .line 210
    iget-object v1, p0, Lcom/join/kotlin/quark/SourceShareDetailActivity;->itemBean:Lcom/join/kotlin/quark/model/bean/SourceListItemBean;

    .line 211
    .line 212
    if-eqz v1, :cond_4

    .line 213
    .line 214
    invoke-virtual {v1}, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;->getId()Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setResourceId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 223
    .line 224
    .line 225
    iget-object v0, p0, Lcom/join/kotlin/quark/SourceShareDetailActivity;->qkPosition:Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setQkPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 228
    .line 229
    .line 230
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickSourceDetailPage:Lcom/papa/sim/statistic/Event;

    .line 235
    .line 236
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 237
    .line 238
    .line 239
    return-void
.end method

.method public onBackClick()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N4(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onSaveClick()V
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v2, "com.quark.browser"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x4

    .line 9
    const/4 v5, 0x0

    .line 10
    move-object v1, p0

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/join/android/app/common/utils/APKUtils;->g(Lcom/join/android/app/common/utils/APKUtils;Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;ILjava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput-boolean v0, p0, Lcom/join/kotlin/quark/SourceShareDetailActivity;->quarkInstalled:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/SourceShareDetailViewModel;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/kotlin/quark/viewmodel/SourceShareDetailViewModel;->getItemBean()Landroidx/lifecycle/MutableLiveData;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {}, Lcom/join/mgps/Util/d2;->q()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {v0}, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;->getDisk_url()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v0}, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;->getTitle()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v0}, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;->getIcon()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    move-object v2, p0

    .line 58
    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/Util/IntentUtil;->startQuarkBrowser(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickSpeedDownUpQk:Lcom/papa/sim/statistic/Event;

    .line 66
    .line 67
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 68
    .line 69
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v3, "qk"

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setQkPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 83
    .line 84
    const-class v1, Lcom/join/kotlin/quark/QuarkInstallActivity;

    .line 85
    .line 86
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .line 88
    .line 89
    sget-object v2, Lcom/join/kotlin/base/dialog/DialogActivityManager;->Companion:Lcom/join/kotlin/base/dialog/DialogActivityManager$Companion;

    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/join/kotlin/base/dialog/DialogActivityManager$Companion;->get()Lcom/join/kotlin/base/dialog/DialogActivityManager;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    new-instance v3, Lcom/join/kotlin/quark/SourceShareDetailActivity$onSaveClick$2;

    .line 96
    .line 97
    invoke-direct {v3}, Lcom/join/kotlin/quark/SourceShareDetailActivity$onSaveClick$2;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v1, v3}, Lcom/join/kotlin/base/dialog/DialogActivityManager;->registerCallback(Ljava/lang/Class;Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const-string v2, "itemBean"

    .line 109
    .line 110
    iget-object v3, p0, Lcom/join/kotlin/quark/SourceShareDetailActivity;->itemBean:Lcom/join/kotlin/quark/model/bean/SourceListItemBean;

    .line 111
    .line 112
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 116
    .line 117
    .line 118
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickPcDetailHomeBtn:Lcom/papa/sim/statistic/Event;

    .line 123
    .line 124
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 125
    .line 126
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v3, "3"

    .line 130
    .line 131
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    iget-object v3, p0, Lcom/join/kotlin/quark/SourceShareDetailActivity;->itemBean:Lcom/join/kotlin/quark/model/bean/SourceListItemBean;

    .line 136
    .line 137
    if-eqz v3, :cond_2

    .line 138
    .line 139
    invoke-virtual {v3}, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;->getType()Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    if-eqz v3, :cond_2

    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    goto :goto_1

    .line 150
    :cond_2
    const/16 v3, 0x8

    .line 151
    .line 152
    :goto_1
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameMode(I)Lcom/papa/sim/statistic/Ext;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    iget-object v3, p0, Lcom/join/kotlin/quark/SourceShareDetailActivity;->itemBean:Lcom/join/kotlin/quark/model/bean/SourceListItemBean;

    .line 157
    .line 158
    if-eqz v3, :cond_3

    .line 159
    .line 160
    invoke-virtual {v3}, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;->getId()Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    goto :goto_2

    .line 165
    :cond_3
    const/4 v3, 0x0

    .line 166
    :goto_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setResourceId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    iget-object v3, p0, Lcom/join/kotlin/quark/SourceShareDetailActivity;->qkPosition:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setQkPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 181
    .line 182
    .line 183
    return-void
.end method

.method public onSearchClick()V
    .locals 0

    return-void
.end method

.method public onShareClick()V
    .locals 0

    return-void
.end method

.method public final setExtBean(Lcom/join/mgps/dto/ExtBean;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/ExtBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/quark/SourceShareDetailActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setItemBean(Lcom/join/kotlin/quark/model/bean/SourceListItemBean;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/quark/model/bean/SourceListItemBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/quark/SourceShareDetailActivity;->itemBean:Lcom/join/kotlin/quark/model/bean/SourceListItemBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setQkPosition(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/quark/SourceShareDetailActivity;->qkPosition:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setQuarkInstalled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/quark/SourceShareDetailActivity;->quarkInstalled:Z

    .line 2
    .line 3
    return-void
.end method
