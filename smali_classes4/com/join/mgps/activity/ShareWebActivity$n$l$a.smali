.class Lcom/join/mgps/activity/ShareWebActivity$n$l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity$n$l;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/ShareWebActivity$n$l;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity$n$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$n$l$a;->b:Lcom/join/mgps/activity/ShareWebActivity$n$l;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$n$l$a;->b:Lcom/join/mgps/activity/ShareWebActivity$n$l;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/join/mgps/activity/ShareWebActivity$n$l;->c:Lcom/join/mgps/activity/ShareWebActivity$n;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/join/mgps/activity/ShareWebActivity$n;->c:Lcom/join/mgps/activity/ShareWebActivity;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->access$1000(Lcom/join/mgps/activity/ShareWebActivity;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    sub-long/2addr v0, v2

    .line 16
    const-wide/16 v2, 0x7d0

    .line 17
    .line 18
    cmp-long p1, v0, v2

    .line 19
    .line 20
    if-gtz p1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$n$l$a;->b:Lcom/join/mgps/activity/ShareWebActivity$n$l;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/join/mgps/activity/ShareWebActivity$n$l;->c:Lcom/join/mgps/activity/ShareWebActivity$n;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/join/mgps/activity/ShareWebActivity$n;->c:Lcom/join/mgps/activity/ShareWebActivity;

    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    invoke-static {p1, v0, v1}, Lcom/join/mgps/activity/ShareWebActivity;->access$1002(Lcom/join/mgps/activity/ShareWebActivity;J)J

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$n$l$a;->b:Lcom/join/mgps/activity/ShareWebActivity$n$l;

    .line 37
    .line 38
    iget-object v0, p1, Lcom/join/mgps/activity/ShareWebActivity$n$l;->c:Lcom/join/mgps/activity/ShareWebActivity$n;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$n;->c:Lcom/join/mgps/activity/ShareWebActivity;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/join/mgps/activity/ShareWebActivity$n$l;->b:Ljava/lang/String;

    .line 43
    .line 44
    const/4 v1, 0x5

    .line 45
    invoke-static {v0, p1, v1}, Lcom/join/mgps/Util/w;->s(Landroid/content/Context;Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
