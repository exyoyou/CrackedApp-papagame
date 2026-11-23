.class public interface abstract Lcom/byazt/eg/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/byazt/eg/u;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/eg/u$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/eg/u$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/eg/u;->c:Lcom/byazt/eg/u;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract c(Lcom/byazt/eg/my;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/eg/my;",
            ")",
            "Ljava/util/List<",
            "Lcom/byazt/eg/t;",
            ">;"
        }
    .end annotation
.end method
