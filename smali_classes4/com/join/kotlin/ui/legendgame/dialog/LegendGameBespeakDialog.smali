.class public final Lcom/join/kotlin/ui/legendgame/dialog/LegendGameBespeakDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLegendGameBespeakDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegendGameBespeakDialog.kt\ncom/join/kotlin/ui/legendgame/dialog/LegendGameBespeakDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,50:1\n1#2:51\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\tH\u0007J\u0006\u0010\n\u001a\u00020\u0007R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/join/kotlin/ui/legendgame/dialog/LegendGameBespeakDialog;",
        "",
        "<init>",
        "()V",
        "dialog",
        "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
        "showCancelConfirm",
        "",
        "onConfirm",
        "Lkotlin/Function0;",
        "dismiss",
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
        "SMAP\nLegendGameBespeakDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegendGameBespeakDialog.kt\ncom/join/kotlin/ui/legendgame/dialog/LegendGameBespeakDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,50:1\n1#2:51\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/join/kotlin/ui/legendgame/dialog/LegendGameBespeakDialog;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static dialog:Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/join/kotlin/ui/legendgame/dialog/LegendGameBespeakDialog;

    invoke-direct {v0}, Lcom/join/kotlin/ui/legendgame/dialog/LegendGameBespeakDialog;-><init>()V

    sput-object v0, Lcom/join/kotlin/ui/legendgame/dialog/LegendGameBespeakDialog;->INSTANCE:Lcom/join/kotlin/ui/legendgame/dialog/LegendGameBespeakDialog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/kongzue/dialogx/dialogs/CustomDialog;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/legendgame/dialog/LegendGameBespeakDialog;->showCancelConfirm$lambda$0(Lcom/kongzue/dialogx/dialogs/CustomDialog;)V

    return-void
.end method

.method public static final showCancelConfirm(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p0    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "onConfirm"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/join/kotlin/ui/legendgame/dialog/LegendGameBespeakDialog;->dialog:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->E1()V

    .line 11
    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 14
    .line 15
    new-instance v1, Lcom/join/kotlin/ui/legendgame/dialog/LegendGameBespeakDialog$showCancelConfirm$1;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/legendgame/dialog/LegendGameBespeakDialog$showCancelConfirm$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;-><init>(Lcom/kongzue/dialogx/interfaces/r;)V

    .line 21
    .line 22
    .line 23
    sget-object p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;->CENTER:Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->o2(Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "#90000000"

    .line 30
    .line 31
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->P2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    new-instance v0, Lcom/join/kotlin/ui/legendgame/dialog/a;

    .line 40
    .line 41
    invoke-direct {v0}, Lcom/join/kotlin/ui/legendgame/dialog/a;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->g2(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->c3()Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 49
    .line 50
    .line 51
    sput-object p0, Lcom/join/kotlin/ui/legendgame/dialog/LegendGameBespeakDialog;->dialog:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 52
    .line 53
    return-void
.end method

.method private static final showCancelConfirm$lambda$0(Lcom/kongzue/dialogx/dialogs/CustomDialog;)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    sput-object p0, Lcom/join/kotlin/ui/legendgame/dialog/LegendGameBespeakDialog;->dialog:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    .line 1
    sget-object v0, Lcom/join/kotlin/ui/legendgame/dialog/LegendGameBespeakDialog;->dialog:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->E1()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
