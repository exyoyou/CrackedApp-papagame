.class Lcom/join/mgps/va/overmind/VExtDbHelperProvider$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/va/overmind/VExtDbHelperProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/va/overmind/VExtDbHelperProvider;


# direct methods
.method constructor <init>(Lcom/join/mgps/va/overmind/VExtDbHelperProvider;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$finalGameTask",
            "val$finalGameFlag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/va/overmind/VExtDbHelperProvider$a;->d:Lcom/join/mgps/va/overmind/VExtDbHelperProvider;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/va/overmind/VExtDbHelperProvider$a;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/va/overmind/VExtDbHelperProvider$a;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/va/overmind/VExtDbHelperProvider$a;->d:Lcom/join/mgps/va/overmind/VExtDbHelperProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v0, p0, Lcom/join/mgps/va/overmind/VExtDbHelperProvider$a;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v0, p0, Lcom/join/mgps/va/overmind/VExtDbHelperProvider$a;->d:Lcom/join/mgps/va/overmind/VExtDbHelperProvider;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget v4, p0, Lcom/join/mgps/va/overmind/VExtDbHelperProvider$a;->c:I

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/va/overmind/VExtDbHelperProvider$a;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    iget-object v0, p0, Lcom/join/mgps/va/overmind/VExtDbHelperProvider$a;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    iget-object v0, p0, Lcom/join/mgps/va/overmind/VExtDbHelperProvider$a;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-virtual/range {v1 .. v7}, Lcom/papa/sim/statistic/t;->p2(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
