.class public final synthetic Lcom/join/mgps/activity/a2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/GameDetailActivity$m;

.field public final synthetic c:Lcom/join/mgps/activity/GameDetailActivity$l;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/GameDetailActivity$m;Lcom/join/mgps/activity/GameDetailActivity$l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/a2;->b:Lcom/join/mgps/activity/GameDetailActivity$m;

    iput-object p2, p0, Lcom/join/mgps/activity/a2;->c:Lcom/join/mgps/activity/GameDetailActivity$l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/a2;->b:Lcom/join/mgps/activity/GameDetailActivity$m;

    iget-object v1, p0, Lcom/join/mgps/activity/a2;->c:Lcom/join/mgps/activity/GameDetailActivity$l;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/GameDetailActivity$m;->f(Lcom/join/mgps/activity/GameDetailActivity$m;Lcom/join/mgps/activity/GameDetailActivity$l;)V

    return-void
.end method
