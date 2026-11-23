.class public final Lcom/windmill/sdk/models/TemplateSetting$Builder;
.super Lcom/czhj/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/models/TemplateSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/windmill/sdk/models/TemplateSetting;",
        "Lcom/windmill/sdk/models/TemplateSetting$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public close_position:Ljava/lang/Integer;

.field public close_style:Ljava/lang/Integer;

.field public mistake_click_rate:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/windmill/sdk/models/TemplateSetting;->DEFAULT_CLOSE_STYLE:Ljava/lang/Integer;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/windmill/sdk/models/TemplateSetting$Builder;->close_style:Ljava/lang/Integer;

    .line 7
    .line 8
    sget-object v0, Lcom/windmill/sdk/models/TemplateSetting;->DEFAULT_CLOSE_POSITION:Ljava/lang/Integer;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/windmill/sdk/models/TemplateSetting$Builder;->close_position:Ljava/lang/Integer;

    .line 11
    .line 12
    sget-object v0, Lcom/windmill/sdk/models/TemplateSetting;->DEFAULT_MISTAKE_CLICK_RATE:Ljava/lang/Integer;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/windmill/sdk/models/TemplateSetting$Builder;->mistake_click_rate:Ljava/lang/Integer;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/models/TemplateSetting$Builder;->build()Lcom/windmill/sdk/models/TemplateSetting;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/windmill/sdk/models/TemplateSetting;
    .locals 5

    .line 2
    new-instance v0, Lcom/windmill/sdk/models/TemplateSetting;

    iget-object v1, p0, Lcom/windmill/sdk/models/TemplateSetting$Builder;->close_style:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/windmill/sdk/models/TemplateSetting$Builder;->close_position:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/windmill/sdk/models/TemplateSetting$Builder;->mistake_click_rate:Ljava/lang/Integer;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/windmill/sdk/models/TemplateSetting;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/czhj/wire/okio/ByteString;)V

    return-object v0
.end method

.method public close_position(Ljava/lang/Integer;)Lcom/windmill/sdk/models/TemplateSetting$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "close_position"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/TemplateSetting$Builder;->close_position:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public close_style(Ljava/lang/Integer;)Lcom/windmill/sdk/models/TemplateSetting$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "close_style"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/TemplateSetting$Builder;->close_style:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public mistake_click_rate(Ljava/lang/Integer;)Lcom/windmill/sdk/models/TemplateSetting$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mistake_click_rate"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/TemplateSetting$Builder;->mistake_click_rate:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method
