.class public Lcom/byazt/n/DownloadNotificationService$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2e,
        0x162
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/n/DownloadNotificationService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/app/NotificationManager;

.field public final synthetic tt:I

.field public final synthetic uj:Lcom/byazt/n/DownloadNotificationService$1;

.field public final synthetic ve:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Lcom/byazt/n/DownloadNotificationService$1;Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/n/DownloadNotificationService$1$1;->uj:Lcom/byazt/n/DownloadNotificationService$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/n/DownloadNotificationService$1$1;->c:Landroid/app/NotificationManager;

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/n/DownloadNotificationService$1$1;->tt:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/n/DownloadNotificationService$1$1;->ve:Landroid/app/Notification;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/n/DownloadNotificationService$1$1;->uj:Lcom/byazt/n/DownloadNotificationService$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/n/DownloadNotificationService$1;->ve:Lcom/byazt/n/DownloadNotificationService;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/n/DownloadNotificationService$1$1;->c:Landroid/app/NotificationManager;

    .line 6
    .line 7
    iget v2, p0, Lcom/byazt/n/DownloadNotificationService$1$1;->tt:I

    .line 8
    .line 9
    iget-object v3, p0, Lcom/byazt/n/DownloadNotificationService$1$1;->ve:Landroid/app/Notification;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/n/DownloadNotificationService;->c(Lcom/byazt/n/DownloadNotificationService;Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
