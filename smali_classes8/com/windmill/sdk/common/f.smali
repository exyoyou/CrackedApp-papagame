.class public Lcom/windmill/sdk/common/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/common/u;


# instance fields
.field private a:Lcom/windmill/sdk/models/WMFilter;


# direct methods
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
.method public a()Lcom/windmill/sdk/models/WMFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/f;->a:Lcom/windmill/sdk/models/WMFilter;

    return-object v0
.end method

.method public a(Lcom/windmill/sdk/models/WMFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "waterfallFilter"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/windmill/sdk/common/f;->a:Lcom/windmill/sdk/models/WMFilter;

    return-void
.end method
