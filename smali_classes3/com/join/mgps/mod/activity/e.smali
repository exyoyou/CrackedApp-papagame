.class public final synthetic Lcom/join/mgps/mod/activity/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/mod/activity/e;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    iput-object p2, p0, Lcom/join/mgps/mod/activity/e;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/activity/e;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    iget-object v1, p0, Lcom/join/mgps/mod/activity/e;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->i(Lcom/join/mgps/mod/activity/ModLoadingActivity;Ljava/lang/String;)V

    return-void
.end method
