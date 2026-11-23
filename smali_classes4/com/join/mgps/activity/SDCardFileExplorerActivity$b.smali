.class Lcom/join/mgps/activity/SDCardFileExplorerActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SDCardFileExplorerActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/SDCardFileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SDCardFileExplorerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$b;->b:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

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
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$b;->b:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->currentParent:Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "/mnt/sdcard"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$b;->b:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

    .line 18
    .line 19
    iget-object v0, p1, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->currentParent:Ljava/io/File;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p1, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->currentParent:Ljava/io/File;

    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$b;->b:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

    .line 28
    .line 29
    iget-object v0, p1, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->currentParent:Ljava/io/File;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p1, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->currentFiles:[Ljava/io/File;

    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$b;->b:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

    .line 38
    .line 39
    iget-object v0, p1, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->currentFiles:[Ljava/io/File;

    .line 40
    .line 41
    invoke-static {p1, v0}, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->access$000(Lcom/join/mgps/activity/SDCardFileExplorerActivity;[Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :catch_0
    :cond_0
    return-void
.end method
