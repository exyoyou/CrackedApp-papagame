.class public abstract Lcom/alibaba/fastjson/serializer/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/j1;


# instance fields
.field protected a:Lcom/alibaba/fastjson/serializer/z0;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/alibaba/fastjson/serializer/z0;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/serializer/z0;-><init>(Ljava/lang/Class;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/a;->a:Lcom/alibaba/fastjson/serializer/z0;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public b()Lcom/alibaba/fastjson/serializer/z0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/a;->a:Lcom/alibaba/fastjson/serializer/z0;

    .line 2
    .line 3
    return-object v0
.end method
