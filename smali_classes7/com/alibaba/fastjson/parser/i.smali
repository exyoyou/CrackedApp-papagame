.class public Lcom/alibaba/fastjson/parser/i;
.super Lcom/alibaba/fastjson/parser/k;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final g:Lcom/alibaba/fastjson/parser/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/parser/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/i;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson/parser/i;->g:Lcom/alibaba/fastjson/parser/i;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/k;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static q()Lcom/alibaba/fastjson/parser/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/parser/i;->g:Lcom/alibaba/fastjson/parser/i;

    .line 2
    .line 3
    return-object v0
.end method
