.class public final synthetic Lcom/join/mgps/activity/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/CloudGameZoneActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/CloudGameZoneActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/w;->b:Lcom/join/mgps/activity/CloudGameZoneActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/w;->b:Lcom/join/mgps/activity/CloudGameZoneActivity;

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/CloudGameZoneActivity;->m(Lcom/join/mgps/activity/CloudGameZoneActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
