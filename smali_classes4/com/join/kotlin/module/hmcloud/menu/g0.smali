.class public final synthetic Lcom/join/kotlin/module/hmcloud/menu/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;

.field public final synthetic c:Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/g0;->b:Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;

    iput-object p2, p0, Lcom/join/kotlin/module/hmcloud/menu/g0;->c:Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/g0;->b:Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;

    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/menu/g0;->c:Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;

    invoke-static {v0, v1}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->P(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
