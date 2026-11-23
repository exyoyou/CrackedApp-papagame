.class public final synthetic Lcom/join/mgps/activity/e9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/ShareWebActivity;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/ShareWebActivity;Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/e9;->b:Lcom/join/mgps/activity/ShareWebActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/e9;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/join/mgps/activity/e9;->d:Z

    iput p4, p0, Lcom/join/mgps/activity/e9;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/e9;->b:Lcom/join/mgps/activity/ShareWebActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/e9;->c:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/join/mgps/activity/e9;->d:Z

    iget v3, p0, Lcom/join/mgps/activity/e9;->e:I

    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/activity/ShareWebActivity;->j(Lcom/join/mgps/activity/ShareWebActivity;Ljava/lang/String;ZI)V

    return-void
.end method
