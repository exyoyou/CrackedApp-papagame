.class public final synthetic Lcom/join/kotlin/ui/hmcloud/dialog/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kongzue/dialogx/interfaces/i;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/dialog/d;->a:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/dialog/d;->a:Lkotlin/jvm/functions/Function0;

    check-cast p1, Lcom/kongzue/dialogx/dialogs/CustomDialog;

    invoke-static {v0, p1}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->a(Lkotlin/jvm/functions/Function0;Lcom/kongzue/dialogx/dialogs/CustomDialog;)V

    return-void
.end method
