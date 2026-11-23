.class public final Lcom/join/mgps/activity/WarningDialogActivity;
.super Lcom/join/mgps/base/dialog/BaseDialogActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/WarningDialogActivity$a;,
        Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;,
        Lcom/join/mgps/activity/WarningDialogActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWarningDialogActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WarningDialogActivity.kt\ncom/join/mgps/activity/WarningDialogActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,219:1\n1#2:220\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 L2\u00020\u00012\u00020\u0002:\u0002LMB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010C\u001a\u00020D2\u0008\u0010E\u001a\u0004\u0018\u00010FH\u0014J\u0008\u0010G\u001a\u00020!H\u0016J\u0012\u0010H\u001a\u00020D2\u0008\u0010I\u001a\u0004\u0018\u00010!H\u0016J\u000e\u0010J\u001a\u00020D2\u0006\u0010K\u001a\u000206R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0008\"\u0004\u0008\u0013\u0010\nR\u001a\u0010\u0014\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0008\"\u0004\u0008\u0016\u0010\nR\u001a\u0010\u0017\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0008\"\u0004\u0008\u0019\u0010\nR\u001a\u0010\u001a\u001a\u00020\u001bX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001a\u0010 \u001a\u00020!X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u001a\u0010&\u001a\u00020!X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010#\"\u0004\u0008(\u0010%R\u001a\u0010)\u001a\u00020!X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010#\"\u0004\u0008+\u0010%R\u001a\u0010,\u001a\u00020!X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010#\"\u0004\u0008.\u0010%R\u001c\u0010/\u001a\u0004\u0018\u000100X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u0010\u00105\u001a\u0004\u0018\u000106X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u00107\u001a\u0004\u0018\u000108X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R\u001c\u0010=\u001a\u0004\u0018\u00010>X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010B\u00a8\u0006N"
    }
    d2 = {
        "Lcom/join/mgps/activity/WarningDialogActivity;",
        "Lcom/join/mgps/base/dialog/BaseDialogActivity;",
        "Landroid/view/View$OnClickListener;",
        "<init>",
        "()V",
        "tvTitle",
        "Landroid/widget/TextView;",
        "getTvTitle",
        "()Landroid/widget/TextView;",
        "setTvTitle",
        "(Landroid/widget/TextView;)V",
        "tvContent",
        "Lcom/papa91/arc/widget/htmltext/HtmlTextView;",
        "getTvContent",
        "()Lcom/papa91/arc/widget/htmltext/HtmlTextView;",
        "setTvContent",
        "(Lcom/papa91/arc/widget/htmltext/HtmlTextView;)V",
        "tvConfirm",
        "getTvConfirm",
        "setTvConfirm",
        "tvPositive",
        "getTvPositive",
        "setTvPositive",
        "tvNegative",
        "getTvNegative",
        "setTvNegative",
        "cbIgnore",
        "Landroid/widget/CheckBox;",
        "getCbIgnore",
        "()Landroid/widget/CheckBox;",
        "setCbIgnore",
        "(Landroid/widget/CheckBox;)V",
        "ll_buttons",
        "Landroid/view/View;",
        "getLl_buttons",
        "()Landroid/view/View;",
        "setLl_buttons",
        "(Landroid/view/View;)V",
        "card",
        "getCard",
        "setCard",
        "ll_cloud_launch",
        "getLl_cloud_launch",
        "setLl_cloud_launch",
        "iv_close",
        "getIv_close",
        "setIv_close",
        "param",
        "Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;",
        "getParam",
        "()Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;",
        "setParam",
        "(Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;)V",
        "gameStartArgs",
        "Lcom/join/mgps/dto/GameStartArgs;",
        "warningDialogCallback",
        "Lcom/join/mgps/callbacks/WarningDialogCallback;",
        "getWarningDialogCallback",
        "()Lcom/join/mgps/callbacks/WarningDialogCallback;",
        "setWarningDialogCallback",
        "(Lcom/join/mgps/callbacks/WarningDialogCallback;)V",
        "prefDef_",
        "Lcom/join/mgps/pref/PrefDef_;",
        "getPrefDef_",
        "()Lcom/join/mgps/pref/PrefDef_;",
        "setPrefDef_",
        "(Lcom/join/mgps/pref/PrefDef_;)V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "getContentView",
        "onClick",
        "v",
        "startGame",
        "args",
        "Companion",
        "WarningDialogParam",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nWarningDialogActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WarningDialogActivity.kt\ncom/join/mgps/activity/WarningDialogActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,219:1\n1#2:220\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/join/mgps/activity/WarningDialogActivity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_PARAM:Ljava/lang/String; = "_param"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public card:Landroid/view/View;

.field public cbIgnore:Landroid/widget/CheckBox;

.field private gameStartArgs:Lcom/join/mgps/dto/GameStartArgs;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public iv_close:Landroid/view/View;

.field public ll_buttons:Landroid/view/View;

.field public ll_cloud_launch:Landroid/view/View;

.field private param:Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private prefDef_:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public tvConfirm:Landroid/widget/TextView;

.field public tvContent:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

.field public tvNegative:Landroid/widget/TextView;

.field public tvPositive:Landroid/widget/TextView;

.field public tvTitle:Landroid/widget/TextView;

.field private warningDialogCallback:Lcom/join/mgps/callbacks/x;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/join/mgps/activity/WarningDialogActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/mgps/activity/WarningDialogActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/join/mgps/activity/WarningDialogActivity;->Companion:Lcom/join/mgps/activity/WarningDialogActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lcom/join/mgps/activity/WarningDialogActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/mgps/activity/WarningDialogActivity;->onCreate$lambda$4(Lcom/join/mgps/activity/WarningDialogActivity;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private static final onCreate$lambda$4(Lcom/join/mgps/activity/WarningDialogActivity;Landroid/widget/CompoundButton;Z)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity;->param:Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;

    .line 2
    .line 3
    if-eqz p1, :cond_5

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->getGameId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_5

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/WarningDialogActivity;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->launchGameUnsupportedTipIds()Lorg/androidannotations/api/sharedpreferences/p;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const-string v3, ""

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Lorg/androidannotations/api/sharedpreferences/p;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    move-object v3, v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v3, v2

    .line 31
    :goto_0
    const/16 v0, 0x2c

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    const/4 v5, 0x0

    .line 35
    if-eqz p2, :cond_2

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-lez p2, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 v4, 0x0

    .line 45
    :goto_1
    if-eqz v4, :cond_5

    .line 46
    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->getGameId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object p0, p0, Lcom/join/mgps/activity/WarningDialogActivity;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    .line 70
    .line 71
    if-eqz p0, :cond_5

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/join/mgps/pref/PrefDef_;->launchGameUnsupportedTipIds()Lorg/androidannotations/api/sharedpreferences/p;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    if-eqz p0, :cond_5

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_2
    const/4 p2, 0x2

    .line 84
    if-eqz v3, :cond_3

    .line 85
    .line 86
    invoke-static {v3, v1, v5, p2, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-ne v6, v4, :cond_3

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    const/4 v4, 0x0

    .line 94
    :goto_2
    if-eqz v4, :cond_5

    .line 95
    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->getGameId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-static {v3, v4, v5, p2, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    if-eqz p2, :cond_4

    .line 120
    .line 121
    new-instance p2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->getGameId()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    const-string v5, ""

    .line 141
    .line 142
    const/4 v6, 0x0

    .line 143
    const/4 v7, 0x4

    .line 144
    const/4 v8, 0x0

    .line 145
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    goto :goto_3

    .line 150
    :cond_4
    const-string v2, ""

    .line 151
    .line 152
    const/4 p1, 0x0

    .line 153
    const/4 v4, 0x4

    .line 154
    const/4 v5, 0x0

    .line 155
    move-object v0, v3

    .line 156
    move v3, p1

    .line 157
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    :goto_3
    iget-object p0, p0, Lcom/join/mgps/activity/WarningDialogActivity;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    .line 162
    .line 163
    if-eqz p0, :cond_5

    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/join/mgps/pref/PrefDef_;->launchGameUnsupportedTipIds()Lorg/androidannotations/api/sharedpreferences/p;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    if-eqz p0, :cond_5

    .line 170
    .line 171
    invoke-virtual {p0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    :cond_5
    :goto_4
    return-void
.end method


# virtual methods
.method public final getCard()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WarningDialogActivity;->card:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "card"

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

.method public final getCbIgnore()Landroid/widget/CheckBox;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WarningDialogActivity;->cbIgnore:Landroid/widget/CheckBox;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "cbIgnore"

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

.method public getContentView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/WarningDialogActivity;->getCard()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getIv_close()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WarningDialogActivity;->iv_close:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "iv_close"

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

.method public final getLl_buttons()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WarningDialogActivity;->ll_buttons:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "ll_buttons"

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

.method public final getLl_cloud_launch()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WarningDialogActivity;->ll_cloud_launch:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "ll_cloud_launch"

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

.method public final getParam()Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WarningDialogActivity;->param:Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPrefDef_()Lcom/join/mgps/pref/PrefDef_;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WarningDialogActivity;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTvConfirm()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WarningDialogActivity;->tvConfirm:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "tvConfirm"

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

.method public final getTvContent()Lcom/papa91/arc/widget/htmltext/HtmlTextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WarningDialogActivity;->tvContent:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "tvContent"

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

.method public final getTvNegative()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WarningDialogActivity;->tvNegative:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "tvNegative"

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

.method public final getTvPositive()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WarningDialogActivity;->tvPositive:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "tvPositive"

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

.method public final getTvTitle()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WarningDialogActivity;->tvTitle:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "tvTitle"

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

.method public final getWarningDialogCallback()Lcom/join/mgps/callbacks/x;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WarningDialogActivity;->warningDialogCallback:Lcom/join/mgps/callbacks/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    sparse-switch p1, :sswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_1

    .line 12
    :sswitch_0
    iget-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity;->param:Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->getEvent()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    :goto_0
    if-eqz p1, :cond_5

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    if-eq p1, v0, :cond_3

    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    if-eq p1, v0, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity;->warningDialogCallback:Lcom/join/mgps/callbacks/x;

    .line 32
    .line 33
    if-eqz p1, :cond_7

    .line 34
    .line 35
    invoke-interface {p1, p0}, Lcom/join/mgps/callbacks/x;->a(Landroid/app/Activity;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity;->gameStartArgs:Lcom/join/mgps/dto/GameStartArgs;

    .line 40
    .line 41
    if-eqz p1, :cond_4

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/GameStartArgs;->setSkipAbiCheck(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/WarningDialogActivity;->startGame(Lcom/join/mgps/dto/GameStartArgs;)V

    .line 47
    .line 48
    .line 49
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity;->warningDialogCallback:Lcom/join/mgps/callbacks/x;

    .line 54
    .line 55
    if-eqz p1, :cond_7

    .line 56
    .line 57
    invoke-interface {p1, p0}, Lcom/join/mgps/callbacks/x;->a(Landroid/app/Activity;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :sswitch_1
    iget-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity;->warningDialogCallback:Lcom/join/mgps/callbacks/x;

    .line 62
    .line 63
    if-eqz p1, :cond_6

    .line 64
    .line 65
    if-eqz p1, :cond_7

    .line 66
    .line 67
    invoke-interface {p1, p0}, Lcom/join/mgps/callbacks/x;->b(Landroid/app/Activity;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :sswitch_2
    iget-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity;->warningDialogCallback:Lcom/join/mgps/callbacks/x;

    .line 76
    .line 77
    if-eqz p1, :cond_7

    .line 78
    .line 79
    if-eqz p1, :cond_7

    .line 80
    .line 81
    invoke-interface {p1, p0}, Lcom/join/mgps/callbacks/x;->d(Landroid/app/Activity;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :sswitch_3
    invoke-virtual {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 86
    .line 87
    .line 88
    :cond_7
    :goto_1
    return-void

    .line 89
    :sswitch_data_0
    .sparse-switch
        0x7f0a0a22 -> :sswitch_3
        0x7f0a0ee2 -> :sswitch_2
        0x7f0a1868 -> :sswitch_3
        0x7f0a18ab -> :sswitch_1
        0x7f0a18bd -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d00ba

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/join/mgps/Util/p2;->v(Landroid/app/Activity;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/base/dialog/BaseDialogActivity;->callback:Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 14
    .line 15
    instance-of v0, p1, Lcom/join/mgps/callbacks/x;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const-string v0, "null cannot be cast to non-null type com.join.mgps.callbacks.WarningDialogCallback"

    .line 20
    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    check-cast p1, Lcom/join/mgps/callbacks/x;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity;->warningDialogCallback:Lcom/join/mgps/callbacks/x;

    .line 27
    .line 28
    :cond_0
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    .line 34
    .line 35
    const p1, 0x7f0a02fe

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/WarningDialogActivity;->setCard(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    const p1, 0x7f0a18f6

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/widget/TextView;

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/WarningDialogActivity;->setTvTitle(Landroid/widget/TextView;)V

    .line 55
    .line 56
    .line 57
    const p1, 0x7f0a1869

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/WarningDialogActivity;->setTvContent(Lcom/papa91/arc/widget/htmltext/HtmlTextView;)V

    .line 67
    .line 68
    .line 69
    const p1, 0x7f0a1868

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Landroid/widget/TextView;

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/WarningDialogActivity;->setTvConfirm(Landroid/widget/TextView;)V

    .line 79
    .line 80
    .line 81
    const p1, 0x7f0a18bd

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Landroid/widget/TextView;

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/WarningDialogActivity;->setTvPositive(Landroid/widget/TextView;)V

    .line 91
    .line 92
    .line 93
    const p1, 0x7f0a18ab

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Landroid/widget/TextView;

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/WarningDialogActivity;->setTvNegative(Landroid/widget/TextView;)V

    .line 103
    .line 104
    .line 105
    const p1, 0x7f0a0edd

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/WarningDialogActivity;->setLl_buttons(Landroid/view/View;)V

    .line 113
    .line 114
    .line 115
    const p1, 0x7f0a031b

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Landroid/widget/CheckBox;

    .line 123
    .line 124
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/WarningDialogActivity;->setCbIgnore(Landroid/widget/CheckBox;)V

    .line 125
    .line 126
    .line 127
    const p1, 0x7f0a0ee2

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/WarningDialogActivity;->setLl_cloud_launch(Landroid/view/View;)V

    .line 135
    .line 136
    .line 137
    const p1, 0x7f0a0a22

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/WarningDialogActivity;->setIv_close(Landroid/view/View;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/join/mgps/activity/WarningDialogActivity;->getTvConfirm()Landroid/widget/TextView;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/join/mgps/activity/WarningDialogActivity;->getTvPositive()Landroid/widget/TextView;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/join/mgps/activity/WarningDialogActivity;->getTvNegative()Landroid/widget/TextView;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/join/mgps/activity/WarningDialogActivity;->getLl_cloud_launch()Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/join/mgps/activity/WarningDialogActivity;->getIv_close()Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    const-string v0, "_param"

    .line 187
    .line 188
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    check-cast p1, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;

    .line 193
    .line 194
    iput-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity;->param:Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;

    .line 195
    .line 196
    if-nez p1, :cond_1

    .line 197
    .line 198
    return-void

    .line 199
    :cond_1
    const/4 v0, 0x1

    .line 200
    const/4 v1, 0x0

    .line 201
    if-eqz p1, :cond_3

    .line 202
    .line 203
    invoke-virtual {p1}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->getArgs()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    if-eqz p1, :cond_3

    .line 208
    .line 209
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-nez v2, :cond_2

    .line 214
    .line 215
    const/4 v2, 0x1

    .line 216
    goto :goto_0

    .line 217
    :cond_2
    const/4 v2, 0x0

    .line 218
    :goto_0
    if-nez v2, :cond_3

    .line 219
    .line 220
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    const-class v3, Lcom/join/mgps/dto/GameStartArgs;

    .line 225
    .line 226
    invoke-virtual {v2, p1, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    check-cast p1, Lcom/join/mgps/dto/GameStartArgs;

    .line 231
    .line 232
    iput-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity;->gameStartArgs:Lcom/join/mgps/dto/GameStartArgs;

    .line 233
    .line 234
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity;->param:Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;

    .line 235
    .line 236
    const/4 v2, 0x2

    .line 237
    const/16 v3, 0x8

    .line 238
    .line 239
    if-eqz p1, :cond_8

    .line 240
    .line 241
    if-eqz p1, :cond_4

    .line 242
    .line 243
    invoke-virtual {p1}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->getType()I

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    if-ne v4, v0, :cond_4

    .line 248
    .line 249
    const/4 v4, 0x1

    .line 250
    goto :goto_1

    .line 251
    :cond_4
    const/4 v4, 0x0

    .line 252
    :goto_1
    if-eqz v4, :cond_5

    .line 253
    .line 254
    invoke-virtual {p0}, Lcom/join/mgps/activity/WarningDialogActivity;->getLl_buttons()Landroid/view/View;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0}, Lcom/join/mgps/activity/WarningDialogActivity;->getTvConfirm()Landroid/widget/TextView;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    .line 267
    .line 268
    goto :goto_2

    .line 269
    :cond_5
    invoke-virtual {p1}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->getType()I

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    if-ne v4, v2, :cond_6

    .line 274
    .line 275
    invoke-virtual {p0}, Lcom/join/mgps/activity/WarningDialogActivity;->getLl_buttons()Landroid/view/View;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0}, Lcom/join/mgps/activity/WarningDialogActivity;->getTvConfirm()Landroid/widget/TextView;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0}, Lcom/join/mgps/activity/WarningDialogActivity;->getTvNegative()Landroid/widget/TextView;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0}, Lcom/join/mgps/activity/WarningDialogActivity;->getLl_cloud_launch()Landroid/view/View;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p0}, Lcom/join/mgps/activity/WarningDialogActivity;->getTvPositive()Landroid/widget/TextView;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 308
    .line 309
    .line 310
    goto :goto_2

    .line 311
    :cond_6
    invoke-virtual {p1}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->getType()I

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    const/4 v4, 0x3

    .line 316
    if-ne p1, v4, :cond_7

    .line 317
    .line 318
    invoke-virtual {p0}, Lcom/join/mgps/activity/WarningDialogActivity;->getLl_buttons()Landroid/view/View;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p0}, Lcom/join/mgps/activity/WarningDialogActivity;->getTvConfirm()Landroid/widget/TextView;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p0}, Lcom/join/mgps/activity/WarningDialogActivity;->getTvNegative()Landroid/widget/TextView;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p0}, Lcom/join/mgps/activity/WarningDialogActivity;->getLl_cloud_launch()Landroid/view/View;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p0}, Lcom/join/mgps/activity/WarningDialogActivity;->getTvPositive()Landroid/widget/TextView;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 351
    .line 352
    .line 353
    goto :goto_2

    .line 354
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/WarningDialogActivity;->getLl_buttons()Landroid/view/View;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {p0}, Lcom/join/mgps/activity/WarningDialogActivity;->getTvConfirm()Landroid/widget/TextView;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 366
    .line 367
    .line 368
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity;->param:Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;

    .line 369
    .line 370
    if-eqz p1, :cond_9

    .line 371
    .line 372
    invoke-virtual {p1}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->getEvent()I

    .line 373
    .line 374
    .line 375
    move-result p1

    .line 376
    if-ne p1, v2, :cond_9

    .line 377
    .line 378
    const/4 p1, 0x1

    .line 379
    goto :goto_3

    .line 380
    :cond_9
    const/4 p1, 0x0

    .line 381
    :goto_3
    if-eqz p1, :cond_a

    .line 382
    .line 383
    invoke-virtual {p0}, Lcom/join/mgps/activity/WarningDialogActivity;->getCbIgnore()Landroid/widget/CheckBox;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 388
    .line 389
    .line 390
    goto :goto_4

    .line 391
    :cond_a
    invoke-virtual {p0}, Lcom/join/mgps/activity/WarningDialogActivity;->getCbIgnore()Landroid/widget/CheckBox;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 396
    .line 397
    .line 398
    :goto_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/WarningDialogActivity;->getTvTitle()Landroid/widget/TextView;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    iget-object v2, p0, Lcom/join/mgps/activity/WarningDialogActivity;->param:Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;

    .line 403
    .line 404
    const-string v3, ""

    .line 405
    .line 406
    if-eqz v2, :cond_b

    .line 407
    .line 408
    invoke-virtual {v2}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->getTitle()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    if-nez v2, :cond_c

    .line 413
    .line 414
    :cond_b
    move-object v2, v3

    .line 415
    :cond_c
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {p0}, Lcom/join/mgps/activity/WarningDialogActivity;->getTvContent()Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 419
    .line 420
    .line 421
    move-result-object p1

    .line 422
    iget-object v2, p0, Lcom/join/mgps/activity/WarningDialogActivity;->param:Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;

    .line 423
    .line 424
    if-eqz v2, :cond_e

    .line 425
    .line 426
    invoke-virtual {v2}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->getContent()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    if-nez v2, :cond_d

    .line 431
    .line 432
    goto :goto_5

    .line 433
    :cond_d
    move-object v3, v2

    .line 434
    :cond_e
    :goto_5
    invoke-virtual {p1, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setHtml(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    iget-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity;->param:Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;

    .line 438
    .line 439
    const/4 v2, 0x0

    .line 440
    if-eqz p1, :cond_f

    .line 441
    .line 442
    invoke-virtual {p1}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->getConfirm()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object p1

    .line 446
    goto :goto_6

    .line 447
    :cond_f
    move-object p1, v2

    .line 448
    :goto_6
    if-eqz p1, :cond_11

    .line 449
    .line 450
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 451
    .line 452
    .line 453
    move-result p1

    .line 454
    if-nez p1, :cond_10

    .line 455
    .line 456
    goto :goto_7

    .line 457
    :cond_10
    const/4 p1, 0x0

    .line 458
    goto :goto_8

    .line 459
    :cond_11
    :goto_7
    const/4 p1, 0x1

    .line 460
    :goto_8
    if-nez p1, :cond_13

    .line 461
    .line 462
    invoke-virtual {p0}, Lcom/join/mgps/activity/WarningDialogActivity;->getTvConfirm()Landroid/widget/TextView;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    iget-object v3, p0, Lcom/join/mgps/activity/WarningDialogActivity;->param:Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;

    .line 467
    .line 468
    if-eqz v3, :cond_12

    .line 469
    .line 470
    invoke-virtual {v3}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->getConfirm()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    goto :goto_9

    .line 475
    :cond_12
    move-object v3, v2

    .line 476
    :goto_9
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    .line 478
    .line 479
    :cond_13
    iget-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity;->param:Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;

    .line 480
    .line 481
    if-eqz p1, :cond_14

    .line 482
    .line 483
    invoke-virtual {p1}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->getPositive()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object p1

    .line 487
    goto :goto_a

    .line 488
    :cond_14
    move-object p1, v2

    .line 489
    :goto_a
    if-eqz p1, :cond_16

    .line 490
    .line 491
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 492
    .line 493
    .line 494
    move-result p1

    .line 495
    if-nez p1, :cond_15

    .line 496
    .line 497
    goto :goto_b

    .line 498
    :cond_15
    const/4 p1, 0x0

    .line 499
    goto :goto_c

    .line 500
    :cond_16
    :goto_b
    const/4 p1, 0x1

    .line 501
    :goto_c
    if-nez p1, :cond_18

    .line 502
    .line 503
    invoke-virtual {p0}, Lcom/join/mgps/activity/WarningDialogActivity;->getTvPositive()Landroid/widget/TextView;

    .line 504
    .line 505
    .line 506
    move-result-object p1

    .line 507
    iget-object v3, p0, Lcom/join/mgps/activity/WarningDialogActivity;->param:Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;

    .line 508
    .line 509
    if-eqz v3, :cond_17

    .line 510
    .line 511
    invoke-virtual {v3}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->getPositive()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v3

    .line 515
    goto :goto_d

    .line 516
    :cond_17
    move-object v3, v2

    .line 517
    :goto_d
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    .line 519
    .line 520
    :cond_18
    iget-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity;->param:Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;

    .line 521
    .line 522
    if-eqz p1, :cond_19

    .line 523
    .line 524
    invoke-virtual {p1}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->getNegative()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object p1

    .line 528
    goto :goto_e

    .line 529
    :cond_19
    move-object p1, v2

    .line 530
    :goto_e
    if-eqz p1, :cond_1b

    .line 531
    .line 532
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 533
    .line 534
    .line 535
    move-result p1

    .line 536
    if-nez p1, :cond_1a

    .line 537
    .line 538
    goto :goto_f

    .line 539
    :cond_1a
    const/4 v0, 0x0

    .line 540
    :cond_1b
    :goto_f
    if-nez v0, :cond_1d

    .line 541
    .line 542
    invoke-virtual {p0}, Lcom/join/mgps/activity/WarningDialogActivity;->getTvNegative()Landroid/widget/TextView;

    .line 543
    .line 544
    .line 545
    move-result-object p1

    .line 546
    iget-object v0, p0, Lcom/join/mgps/activity/WarningDialogActivity;->param:Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;

    .line 547
    .line 548
    if-eqz v0, :cond_1c

    .line 549
    .line 550
    invoke-virtual {v0}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->getNegative()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v2

    .line 554
    :cond_1c
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    .line 556
    .line 557
    :cond_1d
    invoke-virtual {p0}, Lcom/join/mgps/activity/WarningDialogActivity;->getCbIgnore()Landroid/widget/CheckBox;

    .line 558
    .line 559
    .line 560
    move-result-object p1

    .line 561
    new-instance v0, Lcom/join/mgps/activity/ba;

    .line 562
    .line 563
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ba;-><init>(Lcom/join/mgps/activity/WarningDialogActivity;)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 567
    .line 568
    .line 569
    return-void
.end method

.method public final setCard(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
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
    iput-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity;->card:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method

.method public final setCbIgnore(Landroid/widget/CheckBox;)V
    .locals 1
    .param p1    # Landroid/widget/CheckBox;
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
    iput-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity;->cbIgnore:Landroid/widget/CheckBox;

    .line 7
    .line 8
    return-void
.end method

.method public final setIv_close(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
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
    iput-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity;->iv_close:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method

.method public final setLl_buttons(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
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
    iput-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity;->ll_buttons:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method

.method public final setLl_cloud_launch(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
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
    iput-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity;->ll_cloud_launch:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method

.method public final setParam(Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity;->param:Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;

    .line 2
    .line 3
    return-void
.end method

.method public final setPrefDef_(Lcom/join/mgps/pref/PrefDef_;)V
    .locals 0
    .param p1    # Lcom/join/mgps/pref/PrefDef_;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    return-void
.end method

.method public final setTvConfirm(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
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
    iput-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity;->tvConfirm:Landroid/widget/TextView;

    .line 7
    .line 8
    return-void
.end method

.method public final setTvContent(Lcom/papa91/arc/widget/htmltext/HtmlTextView;)V
    .locals 1
    .param p1    # Lcom/papa91/arc/widget/htmltext/HtmlTextView;
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
    iput-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity;->tvContent:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 7
    .line 8
    return-void
.end method

.method public final setTvNegative(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
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
    iput-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity;->tvNegative:Landroid/widget/TextView;

    .line 7
    .line 8
    return-void
.end method

.method public final setTvPositive(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
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
    iput-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity;->tvPositive:Landroid/widget/TextView;

    .line 7
    .line 8
    return-void
.end method

.method public final setTvTitle(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
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
    iput-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity;->tvTitle:Landroid/widget/TextView;

    .line 7
    .line 8
    return-void
.end method

.method public final setWarningDialogCallback(Lcom/join/mgps/callbacks/x;)V
    .locals 0
    .param p1    # Lcom/join/mgps/callbacks/x;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity;->warningDialogCallback:Lcom/join/mgps/callbacks/x;

    .line 2
    .line 3
    return-void
.end method

.method public final startGame(Lcom/join/mgps/dto/GameStartArgs;)V
    .locals 3
    .param p1    # Lcom/join/mgps/dto/GameStartArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "args"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameStartArgs;->getMethodType()Lcom/join/mgps/dto/GameStartType;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object v2, Lcom/join/mgps/activity/WarningDialogActivity$b;->$EnumSwitchMapping$0:[I

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    aget v0, v2, v0

    .line 22
    .line 23
    :goto_0
    if-eq v0, v1, :cond_8

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    if-eq v0, v1, :cond_7

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    if-eq v0, v1, :cond_6

    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    if-eq v0, v1, :cond_5

    .line 33
    .line 34
    const/4 v1, 0x4

    .line 35
    if-eq v0, v1, :cond_4

    .line 36
    .line 37
    const/4 v1, 0x5

    .line 38
    if-ne v0, v1, :cond_3

    .line 39
    .line 40
    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->a:Lcom/join/android/app/common/utils/APKUtils$b;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameStartArgs;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    :cond_1
    const-string p1, ""

    .line 55
    .line 56
    :cond_2
    invoke-virtual {v0, p0, p1}, Lcom/join/android/app/common/utils/APKUtils$b;->V(Landroid/content/Context;Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 61
    .line 62
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameStartArgs;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->I4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_5
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->u4(Landroid/content/Context;Lcom/join/mgps/dto/GameStartArgs;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_6
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->n(Landroid/content/Context;Lcom/join/mgps/dto/GameStartArgs;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_7
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->k(Landroid/content/Context;Lcom/join/mgps/dto/GameStartArgs;)V

    .line 83
    .line 84
    .line 85
    :cond_8
    :goto_1
    return-void
.end method
