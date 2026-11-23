.class public final Lcom/byazt/bt/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x112,
        0x46
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/bt/c;->tt(Landroid/content/Context;Lcom/byazt/dna/c;)Lcom/byazt/zuu/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic tt:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/bt/c$2;->c:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/bt/c$2;->tt:Landroid/location/LocationManager;

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
    iget-object v0, p0, Lcom/byazt/bt/c$2;->c:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/bt/c$2;->tt:Landroid/location/LocationManager;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/bt/c;->c(Landroid/content/Context;Landroid/location/LocationManager;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
