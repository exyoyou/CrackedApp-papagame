.class public final Lcom/byazt/w/sp$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/c/rh;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f9,
        0x73c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/w/sp;->c(Lcom/byazt/c/m;)Lcom/byazt/c/rh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/c/m;


# direct methods
.method public constructor <init>(Lcom/byazt/c/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/w/sp$19;->c:Lcom/byazt/c/m;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(JJLcom/byazt/c/nu;)Z
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/w/sp$19;->c:Lcom/byazt/c/m;

    .line 2
    .line 3
    invoke-static {p5}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/nu;)Lcom/byazt/c/z;

    .line 4
    .line 5
    .line 6
    move-result-object v5

    .line 7
    move-wide v1, p1

    .line 8
    move-wide v3, p3

    .line 9
    invoke-interface/range {v0 .. v5}, Lcom/byazt/c/m;->c(JJLcom/byazt/c/z;)Z

    .line 10
    .line 11
    .line 12
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p1

    .line 14
    :catch_0
    move-exception p1

    .line 15
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return p1
.end method
