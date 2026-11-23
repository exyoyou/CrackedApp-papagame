.class public Lcom/byazt/ia/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x203,
        0xf
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ia/uj$c;
    }
.end annotation


# instance fields
.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/byazt/ia/uj;->c(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    :catchall_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ia/uj;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ia/uj;->c:I

    return p1
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    .line 2
    new-instance v0, Lcom/byazt/ia/uj$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/byazt/ia/uj$c;-><init>(Lcom/byazt/ia/uj;Lcom/byazt/ia/uj$1;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/byazt/ia/uj;->c:I

    return v0
.end method
