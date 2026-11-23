.class public final synthetic Lcom/join/mgps/activity/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/CloudGameTimeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/CloudGameTimeActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/p;->b:Lcom/join/mgps/activity/CloudGameTimeActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/p;->b:Lcom/join/mgps/activity/CloudGameTimeActivity;

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/CloudGameTimeActivity;->k(Lcom/join/mgps/activity/CloudGameTimeActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
