package com.company.demo.web.order;

import com.company.demo.entity.Order;
import com.haulmont.cuba.gui.components.AbstractLookup;
import com.haulmont.cuba.gui.components.actions.CreateAction;
import com.haulmont.cuba.gui.components.actions.EditAction;
import com.haulmont.cuba.gui.components.actions.RemoveAction;
import com.haulmont.cuba.gui.data.CollectionDatasource;

import javax.inject.Inject;
import javax.inject.Named;
import java.util.Map;
import java.util.UUID;

public class OrderBrowse extends AbstractLookup {

    @Named("ordersTable.create")
    private CreateAction ordersTableCreate;
    @Named("ordersTable.edit")
    private EditAction ordersTableEdit;
    @Inject
    private CollectionDatasource<Order, UUID> ordersDs;

    @Override
    public void init(Map<String, Object> params) {
        ordersTableCreate.setAfterCommitHandler(e -> ordersDs.refresh());
        ordersTableEdit.setAfterCommitHandler(e -> ordersDs.refresh());
    }
}