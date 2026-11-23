.class public final synthetic Lcom/join/mgps/hmcloud/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic b:Lcom/join/mgps/hmcloud/HMCloudGameManager$a;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/hmcloud/HMCloudGameManager$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/hmcloud/n;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager$a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/n;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager$a;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b(Lcom/join/mgps/hmcloud/HMCloudGameManager$a;Ljava/lang/Boolean;)V

    return-void
.end method
