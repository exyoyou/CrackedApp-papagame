.class public Lcom/alibaba/fastjson/serializer/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/j1;


# static fields
.field public static a:Lcom/alibaba/fastjson/serializer/u0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/serializer/u0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/u0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson/serializer/u0;->a:Lcom/alibaba/fastjson/serializer/u0;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public d(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/alibaba/fastjson/serializer/t0;

    .line 2
    .line 3
    const/4 p5, 0x0

    .line 4
    invoke-interface {p2, p1, p3, p4, p5}, Lcom/alibaba/fastjson/serializer/t0;->a(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
