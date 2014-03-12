.class Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;
.super Landroid/widget/BaseAdapter;
.source "BootApplicationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hwpowermanager/BootApplicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BootAppAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter$SwitchChangeListener;
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/huawei/android/hwpowermanager/BootApplicationActivity;


# direct methods
.method public constructor <init>(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "c"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;->this$0:Lcom/huawei/android/hwpowermanager/BootApplicationActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 150
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 152
    return-void
.end method


# virtual methods
.method public allChecked()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 189
    const/4 v1, 0x0

    .line 191
    .local v1, haveItemUnChecked:Z
    :try_start_0
    invoke-static {}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;

    .line 192
    .local v3, item:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    iget-boolean v1, v3, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mNewEnable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    if-eqz v1, :cond_0

    .line 200
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    :goto_0
    return v4

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .line 200
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public allUnchecked()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 172
    const/4 v1, 0x0

    .line 174
    .local v1, haveItemChecked:Z
    :try_start_0
    invoke-static {}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;

    .line 175
    .local v3, item:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    iget-boolean v6, v3, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mNewEnable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_1

    move v1, v5

    .line 176
    :goto_0
    if-eqz v1, :cond_0

    .line 183
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    :goto_1
    return v4

    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #item:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    :cond_1
    move v1, v4

    .line 175
    goto :goto_0

    .line 180
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Ljava/lang/Exception;
    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    move v4, v5

    .line 183
    goto :goto_1
.end method

.method public bindView(Landroid/view/View;I)V
    .locals 5
    .parameter "view"
    .parameter "position"

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$ViewHolder;

    .line 229
    .local v2, vh:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$ViewHolder;
    invoke-static {}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;

    .line 230
    .local v0, item:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    iget-object v3, v2, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    iget-object v3, v2, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mLable:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->toShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v1, v0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mPkgName:Ljava/lang/String;

    .line 236
    .local v1, name:Ljava/lang/String;
    iget-object v3, v2, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$ViewHolder;->check:Landroid/widget/Switch;

    new-instance v4, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter$SwitchChangeListener;

    invoke-direct {v4, p0, p2, v1}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter$SwitchChangeListener;-><init>(Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 238
    iget-boolean v3, v0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mNewEnable:Z

    if-eqz v3, :cond_0

    .line 239
    iget-object v3, v2, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$ViewHolder;->check:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v3, v2, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$ViewHolder;->check:Landroid/widget/Switch;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 156
    invoke-static {}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 157
    .local v0, count:I
    :goto_0
    return v0

    .line 156
    .end local v0           #count:I
    :cond_0
    invoke-static {}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 162
    invoke-static {}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 167
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 207
    if-eqz p2, :cond_0

    .line 208
    move-object v0, p2

    .line 212
    .local v0, v:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;->bindView(Landroid/view/View;I)V

    .line 213
    return-object v0

    .line 210
    .end local v0           #v:Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p3, p1}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;->newView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public newView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 5
    .parameter "parent"
    .parameter "pos"

    .prologue
    .line 217
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030003

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 219
    .local v1, v:Landroid/view/View;
    new-instance v0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$ViewHolder;

    invoke-direct {v0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$ViewHolder;-><init>()V

    .line 220
    .local v0, h:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$ViewHolder;
    const/high16 v2, 0x7f0b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 221
    const v2, 0x7f0b000e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$ViewHolder;->name:Landroid/widget/TextView;

    .line 222
    const v2, 0x7f0b0004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, v0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$ViewHolder;->check:Landroid/widget/Switch;

    .line 223
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 224
    return-object v1
.end method
