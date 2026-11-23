.class public final synthetic Lcom/join/mgps/activity/k9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/ShareWebActivity$n;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/ShareWebActivity$n;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/k9;->b:Lcom/join/mgps/activity/ShareWebActivity$n;

    iput p2, p0, Lcom/join/mgps/activity/k9;->c:I

    iput-object p3, p0, Lcom/join/mgps/activity/k9;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/k9;->b:Lcom/join/mgps/activity/ShareWebActivity$n;

    iget v1, p0, Lcom/join/mgps/activity/k9;->c:I

    iget-object v2, p0, Lcom/join/mgps/activity/k9;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/ShareWebActivity$n;->g(Lcom/join/mgps/activity/ShareWebActivity$n;ILjava/lang/String;)V

    return-void
.end method
