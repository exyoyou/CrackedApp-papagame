.class public final synthetic Lcom/join/mgps/activity/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/dialog/i$c;


# instance fields
.field public final synthetic a:Lcom/join/mgps/activity/FriendActivity;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/FriendActivity;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/o1;->a:Lcom/join/mgps/activity/FriendActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/o1;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/o1;->a:Lcom/join/mgps/activity/FriendActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/o1;->b:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/activity/FriendActivity;->v(Lcom/join/mgps/activity/FriendActivity;Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method
