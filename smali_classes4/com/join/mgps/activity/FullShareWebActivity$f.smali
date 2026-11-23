.class Lcom/join/mgps/activity/FullShareWebActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/FullShareWebActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/Util/IntentDateBean;

.field final synthetic b:Lcom/join/mgps/activity/FullShareWebActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FullShareWebActivity;Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$intentDateBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$f;->b:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/FullShareWebActivity$f;->a:Lcom/join/mgps/Util/IntentDateBean;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "userAgent",
            "contentDisposition",
            "mimetype",
            "contentLength"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/FullShareWebActivity$f;->b:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 2
    .line 3
    iget-object p3, p0, Lcom/join/mgps/activity/FullShareWebActivity$f;->a:Lcom/join/mgps/Util/IntentDateBean;

    .line 4
    .line 5
    invoke-virtual {p2, p1, p3}, Lcom/join/mgps/activity/FullShareWebActivity;->downGame(Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
