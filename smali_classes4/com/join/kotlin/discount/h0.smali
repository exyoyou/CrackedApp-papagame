.class public final synthetic Lcom/join/kotlin/discount/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/discount/h0;->b:Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/h0;->b:Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;

    check-cast p1, Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;

    invoke-static {v0, p1}, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;->l(Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
