.class public final Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;
.super Lcom/join/kotlin/module/hmcloud/dialog/HMBaseDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHMSaveCustomDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMSaveCustomDialog.kt\ncom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,47:1\n65#2,16:48\n93#2,3:64\n*S KotlinDebug\n*F\n+ 1 HMSaveCustomDialog.kt\ncom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog\n*L\n33#1:48,16\n33#1:64,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0008J\u0012\u0010\u001f\u001a\u00020\u001a2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0014J\u0010\u0010\"\u001a\u00020\u001a2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0019R\u001a\u0010\t\u001a\u00020\nX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\nX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000c\"\u0004\u0008\u0014\u0010\u000eR\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R(\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006#"
    }
    d2 = {
        "Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;",
        "Lcom/join/kotlin/module/hmcloud/dialog/HMBaseDialog;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "themeResId",
        "",
        "(Landroid/content/Context;I)V",
        "save",
        "Landroid/view/View;",
        "getSave",
        "()Landroid/view/View;",
        "setSave",
        "(Landroid/view/View;)V",
        "cancel",
        "getCancel",
        "setCancel",
        "close",
        "getClose",
        "setClose",
        "name",
        "Landroid/widget/EditText;",
        "onSave",
        "Lkotlin/Function1;",
        "",
        "",
        "getOnSave",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnSave",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setName",
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
        "SMAP\nHMSaveCustomDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMSaveCustomDialog.kt\ncom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,47:1\n65#2,16:48\n93#2,3:64\n*S KotlinDebug\n*F\n+ 1 HMSaveCustomDialog.kt\ncom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog\n*L\n33#1:48,16\n33#1:64,3\n*E\n"
    }
.end annotation


# instance fields
.field public cancel:Landroid/view/View;

.field public close:Landroid/view/View;

.field private name:Landroid/widget/EditText;

.field private onSave:Lkotlin/jvm/functions/Function1;
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

.field public save:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMBaseDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/dialog/HMBaseDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic a(Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;->onCreate$lambda$2(Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getName$p(Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;->name:Landroid/widget/EditText;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;->onCreate$lambda$1(Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;->onCreate$lambda$0(Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;Landroid/view/View;)V

    return-void
.end method

.method private static final onCreate$lambda$0(Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onCreate$lambda$1(Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onCreate$lambda$2(Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;->onSave:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;->name:Landroid/widget/EditText;

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const-string p0, "name"

    .line 10
    .line 11
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method


# virtual methods
.method public final getCancel()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;->cancel:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "cancel"

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

.method public final getClose()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;->close:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "close"

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

.method public final getOnSave()Lkotlin/jvm/functions/Function1;
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
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;->onSave:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSave()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;->save:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "save"

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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d01f3

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f0a10d8

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/widget/EditText;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;->name:Landroid/widget/EditText;

    .line 20
    .line 21
    const p1, 0x7f0a040f

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;->setSave(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    const p1, 0x7f0a02f5

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;->setCancel(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    const p1, 0x7f0a03b0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;->setClose(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;->getCancel()Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance v0, Lcom/join/kotlin/module/hmcloud/dialog/w0;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/dialog/w0;-><init>(Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;->getClose()Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance v0, Lcom/join/kotlin/module/hmcloud/dialog/x0;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/dialog/x0;-><init>(Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;->getSave()Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    new-instance v0, Lcom/join/kotlin/module/hmcloud/dialog/y0;

    .line 80
    .line 81
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/dialog/y0;-><init>(Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;->name:Landroid/widget/EditText;

    .line 88
    .line 89
    if-nez p1, :cond_0

    .line 90
    .line 91
    const-string p1, "name"

    .line 92
    .line 93
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const/4 p1, 0x0

    .line 97
    :cond_0
    new-instance v0, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog$onCreate$$inlined$addTextChangedListener$default$1;

    .line 98
    .line 99
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog$onCreate$$inlined$addTextChangedListener$default$1;-><init>(Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final setCancel(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;->cancel:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method

.method public final setClose(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;->close:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;->name:Landroid/widget/EditText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "name"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    const-string p1, ""

    .line 14
    .line 15
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final setOnSave(Lkotlin/jvm/functions/Function1;)V
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
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;->onSave:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final setSave(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;->save:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method
