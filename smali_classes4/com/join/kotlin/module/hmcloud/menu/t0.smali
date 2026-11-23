.class public final synthetic Lcom/join/kotlin/module/hmcloud/menu/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;

.field public final synthetic c:Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/t0;->b:Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;

    iput-object p2, p0, Lcom/join/kotlin/module/hmcloud/menu/t0;->c:Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/t0;->b:Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;

    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/menu/t0;->c:Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->c0(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
