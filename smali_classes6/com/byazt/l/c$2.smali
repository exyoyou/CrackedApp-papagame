.class public Lcom/byazt/l/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x205,
        0x46
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/l/c;->c(Landroid/app/NotificationManager;ILandroid/app/Notification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/app/NotificationManager;

.field public final synthetic tt:I

.field public final synthetic ve:Lcom/byazt/l/c;


# direct methods
.method public constructor <init>(Lcom/byazt/l/c;Landroid/app/NotificationManager;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/l/c$2;->ve:Lcom/byazt/l/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/l/c$2;->c:Landroid/app/NotificationManager;

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/l/c$2;->tt:I

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/l/c$2;->ve:Lcom/byazt/l/c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/l/c$2;->c:Landroid/app/NotificationManager;

    .line 4
    .line 5
    iget v2, p0, Lcom/byazt/l/c$2;->tt:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/byazt/l/c;->c(Lcom/byazt/l/c;Landroid/app/NotificationManager;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
