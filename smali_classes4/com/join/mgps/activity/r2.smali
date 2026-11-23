.class public final synthetic Lcom/join/mgps/activity/r2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/callbacks/c;


# instance fields
.field public final synthetic a:Lcom/join/mgps/dto/GamedetialModleFourBean;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/r2;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    return-void
.end method


# virtual methods
.method public final a()Lcom/join/mgps/dto/GamedetialModleFourBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/r2;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-static {v0}, Lcom/join/mgps/activity/s2;->O(Lcom/join/mgps/dto/GamedetialModleFourBean;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    return-object v0
.end method
