.class Lcom/join/mgps/activity/FullShareWebActivity$o$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/FullShareWebActivity$o;->goBackUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/activity/FullShareWebActivity$o;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FullShareWebActivity$o;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$p;->c:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$p;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$p;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$p;->c:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/join/mgps/activity/FullShareWebActivity$o;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/activity/FullShareWebActivity;->access$1300(Lcom/join/mgps/activity/FullShareWebActivity;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$p;->c:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/join/mgps/activity/FullShareWebActivity$o;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$p;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method
