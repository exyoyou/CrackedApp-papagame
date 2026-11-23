.class public final Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;
.super Lcom/join/kotlin/module/hmcloud/dialog/HMBaseFragmentDialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J&\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u001a\u0010\u001a\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u00132\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR(\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;",
        "Lcom/join/kotlin/module/hmcloud/dialog/HMBaseFragmentDialog;",
        "<init>",
        "()V",
        "binding",
        "Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmPadAddBinding;",
        "getBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmPadAddBinding;",
        "setBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmPadAddBinding;)V",
        "onAddKey",
        "Lkotlin/Function1;",
        "",
        "",
        "getOnAddKey",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnAddKey",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "view",
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
.field public binding:Lcom/join/android/app/mgsim/wufun/databinding/aa0;

.field private onAddKey:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMBaseFragmentDialog;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic M(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;Ljava/util/Map;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;->onViewCreated$lambda$1(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;Ljava/util/Map;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic N(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;->onViewCreated$lambda$0(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;Landroid/view/View;)V

    return-void
.end method

.method private static final onViewCreated$lambda$0(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onViewCreated$lambda$1(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;Ljava/util/Map;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;->onAddKey:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/String;

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    const-string p1, ""

    .line 22
    .line 23
    :cond_0
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/join/android/app/mgsim/wufun/databinding/aa0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;->binding:Lcom/join/android/app/mgsim/wufun/databinding/aa0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "binding"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getOnAddKey()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;->onAddKey:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string p3, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    invoke-static {p1, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/aa0;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/aa0;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;->setBinding(Lcom/join/android/app/mgsim/wufun/databinding/aa0;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/aa0;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/aa0;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/aa0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/aa0;->s:Landroid/view/View;

    .line 14
    .line 15
    new-instance p2, Lcom/join/kotlin/module/hmcloud/dialog/i;

    .line 16
    .line 17
    invoke-direct {p2, p0}, Lcom/join/kotlin/module/hmcloud/dialog/i;-><init>(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    .line 22
    .line 23
    const/16 p1, 0x10

    .line 24
    .line 25
    new-array p1, p1, [Lkotlin/Pair;

    .line 26
    .line 27
    const p2, 0x7f0a0fc1

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnLT:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const/4 v0, 0x0

    .line 45
    aput-object p2, p1, v0

    .line 46
    .line 47
    const p2, 0x7f0a0e40

    .line 48
    .line 49
    .line 50
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnLB:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    const/4 v0, 0x1

    .line 65
    aput-object p2, p1, v0

    .line 66
    .line 67
    const p2, 0x7f0a0fc0

    .line 68
    .line 69
    .line 70
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnLS:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    const/4 v0, 0x2

    .line 85
    aput-object p2, p1, v0

    .line 86
    .line 87
    const p2, 0x7f0a1431

    .line 88
    .line 89
    .line 90
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnRT:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    const/4 v0, 0x3

    .line 105
    aput-object p2, p1, v0

    .line 106
    .line 107
    const p2, 0x7f0a130b

    .line 108
    .line 109
    .line 110
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnRB:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    const/4 v0, 0x4

    .line 125
    aput-object p2, p1, v0

    .line 126
    .line 127
    const p2, 0x7f0a1430

    .line 128
    .line 129
    .line 130
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnRS:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    const/4 v0, 0x5

    .line 145
    aput-object p2, p1, v0

    .line 146
    .line 147
    const p2, 0x7f0a1c06

    .line 148
    .line 149
    .line 150
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnX:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    const/4 v0, 0x6

    .line 165
    aput-object p2, p1, v0

    .line 166
    .line 167
    const p2, 0x7f0a1c1e

    .line 168
    .line 169
    .line 170
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnY:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    const/4 v0, 0x7

    .line 185
    aput-object p2, p1, v0

    .line 186
    .line 187
    const p2, 0x7f0a0031

    .line 188
    .line 189
    .line 190
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnA:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 195
    .line 196
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    const/16 v0, 0x8

    .line 205
    .line 206
    aput-object p2, p1, v0

    .line 207
    .line 208
    const p2, 0x7f0a0136

    .line 209
    .line 210
    .line 211
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnB:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 216
    .line 217
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    const/16 v0, 0x9

    .line 226
    .line 227
    aput-object p2, p1, v0

    .line 228
    .line 229
    const p2, 0x7f0a102b

    .line 230
    .line 231
    .line 232
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnStart:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 237
    .line 238
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    const/16 v0, 0xa

    .line 247
    .line 248
    aput-object p2, p1, v0

    .line 249
    .line 250
    const p2, 0x7f0a1487

    .line 251
    .line 252
    .line 253
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnSelect:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 258
    .line 259
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 264
    .line 265
    .line 266
    move-result-object p2

    .line 267
    const/16 v0, 0xb

    .line 268
    .line 269
    aput-object p2, p1, v0

    .line 270
    .line 271
    const p2, 0x7f0a0537

    .line 272
    .line 273
    .line 274
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object p2

    .line 278
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->Dpad:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 279
    .line 280
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 285
    .line 286
    .line 287
    move-result-object p2

    .line 288
    const/16 v0, 0xc

    .line 289
    .line 290
    aput-object p2, p1, v0

    .line 291
    .line 292
    const p2, 0x7f0a00cb

    .line 293
    .line 294
    .line 295
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object p2

    .line 299
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->JoyL:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 300
    .line 301
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 306
    .line 307
    .line 308
    move-result-object p2

    .line 309
    const/16 v0, 0xd

    .line 310
    .line 311
    aput-object p2, p1, v0

    .line 312
    .line 313
    const p2, 0x7f0a00cc

    .line 314
    .line 315
    .line 316
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 317
    .line 318
    .line 319
    move-result-object p2

    .line 320
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->JoyR:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 321
    .line 322
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 327
    .line 328
    .line 329
    move-result-object p2

    .line 330
    const/16 v0, 0xe

    .line 331
    .line 332
    aput-object p2, p1, v0

    .line 333
    .line 334
    const p2, 0x7f0a00ca

    .line 335
    .line 336
    .line 337
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 338
    .line 339
    .line 340
    move-result-object p2

    .line 341
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->JoyDpad:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 342
    .line 343
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 348
    .line 349
    .line 350
    move-result-object p2

    .line 351
    const/16 v0, 0xf

    .line 352
    .line 353
    aput-object p2, p1, v0

    .line 354
    .line 355
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    new-instance p2, Lcom/join/kotlin/module/hmcloud/dialog/j;

    .line 360
    .line 361
    invoke-direct {p2, p0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/j;-><init>(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;Ljava/util/Map;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/aa0;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/aa0;->m:Landroid/widget/ImageView;

    .line 369
    .line 370
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    .line 372
    .line 373
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/aa0;->k:Landroid/widget/ImageView;

    .line 374
    .line 375
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    .line 377
    .line 378
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/aa0;->l:Landroid/widget/ImageView;

    .line 379
    .line 380
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    .line 382
    .line 383
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/aa0;->q:Landroid/widget/ImageView;

    .line 384
    .line 385
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    .line 387
    .line 388
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/aa0;->o:Landroid/widget/ImageView;

    .line 389
    .line 390
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    .line 392
    .line 393
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/aa0;->p:Landroid/widget/ImageView;

    .line 394
    .line 395
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    .line 397
    .line 398
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/aa0;->u:Landroid/widget/ImageView;

    .line 399
    .line 400
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    .line 402
    .line 403
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/aa0;->c:Landroid/widget/ImageView;

    .line 404
    .line 405
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    .line 407
    .line 408
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/aa0;->v:Landroid/widget/ImageView;

    .line 409
    .line 410
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    .line 412
    .line 413
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/aa0;->g:Landroid/widget/ImageView;

    .line 414
    .line 415
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    .line 417
    .line 418
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/aa0;->n:Landroid/widget/ImageView;

    .line 419
    .line 420
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    .line 422
    .line 423
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/aa0;->r:Landroid/widget/ImageView;

    .line 424
    .line 425
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    .line 427
    .line 428
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/aa0;->i:Lcom/join/android/app/mgsim/wufun/databinding/ga0;

    .line 429
    .line 430
    invoke-virtual {v0}, Lcom/join/android/app/mgsim/wufun/databinding/ga0;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    .line 436
    .line 437
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/aa0;->e:Lcom/join/android/app/mgsim/wufun/databinding/da0;

    .line 438
    .line 439
    invoke-virtual {v0}, Lcom/join/android/app/mgsim/wufun/databinding/da0;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    .line 445
    .line 446
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/aa0;->f:Lcom/join/android/app/mgsim/wufun/databinding/da0;

    .line 447
    .line 448
    invoke-virtual {v0}, Lcom/join/android/app/mgsim/wufun/databinding/da0;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    .line 454
    .line 455
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/aa0;->d:Lcom/join/android/app/mgsim/wufun/databinding/ca0;

    .line 456
    .line 457
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/ca0;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 458
    .line 459
    .line 460
    move-result-object p1

    .line 461
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    .line 463
    .line 464
    return-void
.end method

.method public final setBinding(Lcom/join/android/app/mgsim/wufun/databinding/aa0;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/aa0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;->binding:Lcom/join/android/app/mgsim/wufun/databinding/aa0;

    .line 7
    .line 8
    return-void
.end method

.method public final setOnAddKey(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;->onAddKey:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method
