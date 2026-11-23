.class public final Lcom/byazt/w/sp$31;
.super Lcom/byazt/c/m$c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f9,
        0x711
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/w/sp;->c(Lcom/byazt/c/rh;)Lcom/byazt/c/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/c/rh;


# direct methods
.method public constructor <init>(Lcom/byazt/c/rh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/w/sp$31;->c:Lcom/byazt/c/rh;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/c/m$c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(JJLcom/byazt/c/z;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/w/sp$31;->c:Lcom/byazt/c/rh;

    .line 2
    .line 3
    invoke-static {p5}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/z;)Lcom/byazt/c/nu;

    .line 4
    .line 5
    .line 6
    move-result-object v5

    .line 7
    move-wide v1, p1

    .line 8
    move-wide v3, p3

    .line 9
    invoke-interface/range {v0 .. v5}, Lcom/byazt/c/rh;->c(JJLcom/byazt/c/nu;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method
