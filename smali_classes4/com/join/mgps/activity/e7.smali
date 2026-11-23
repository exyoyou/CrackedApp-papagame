.class public final synthetic Lcom/join/mgps/activity/e7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/MGMainActivity$g;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/join/mgps/dto/ExtBean;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/MGMainActivity$g;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/e7;->b:Lcom/join/mgps/activity/MGMainActivity$g;

    iput-object p2, p0, Lcom/join/mgps/activity/e7;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/join/mgps/activity/e7;->d:Lcom/join/mgps/dto/ExtBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/e7;->b:Lcom/join/mgps/activity/MGMainActivity$g;

    iget-object v1, p0, Lcom/join/mgps/activity/e7;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/e7;->d:Lcom/join/mgps/dto/ExtBean;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/MGMainActivity$g;->g(Lcom/join/mgps/activity/MGMainActivity$g;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)V

    return-void
.end method
