.class public final synthetic Lcom/join/kotlin/ui/legendgame/dialog/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function0;

.field public final synthetic c:Lcom/kongzue/dialogx/dialogs/CustomDialog;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/kongzue/dialogx/dialogs/CustomDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/legendgame/dialog/d;->b:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/join/kotlin/ui/legendgame/dialog/d;->c:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/legendgame/dialog/d;->b:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lcom/join/kotlin/ui/legendgame/dialog/d;->c:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/ui/legendgame/dialog/LegendGameBespeakDialog$showCancelConfirm$1;->f(Lkotlin/jvm/functions/Function0;Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V

    return-void
.end method
