.class public Lcom/byazt/fdg/ve$ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x410,
        0x395
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/fdg/ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ve"
.end annotation


# instance fields
.field public final c:[Ljava/security/cert/X509Certificate;

.field public final tt:Lcom/byazt/fdg/ve$tt;

.field public ve:[B


# direct methods
.method public constructor <init>([Ljava/security/cert/X509Certificate;Lcom/byazt/fdg/ve$tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/fdg/ve$ve;->c:[Ljava/security/cert/X509Certificate;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/fdg/ve$ve;->tt:Lcom/byazt/fdg/ve$tt;

    .line 7
    .line 8
    return-void
.end method
